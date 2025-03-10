/*
 * Copyright (c) 2012 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Manuel Requena <manuel.requena@cttc.es>
 * (Based on lte-helper.cc)
 */

#include "lte-simple-helper.h"

#include "lte-simple-net-device.h"
#include "lte-test-entities.h"

#include "ns3/callback.h"
#include "ns3/config.h"
#include "ns3/error-model.h"
#include "ns3/log.h"
#include "ns3/simple-channel.h"

namespace ns3
{

NS_LOG_COMPONENT_DEFINE("LteSimpleHelper");

NS_OBJECT_ENSURE_REGISTERED(LteSimpleHelper);

LteSimpleHelper::LteSimpleHelper()
{
    NS_LOG_FUNCTION(this);
    m_enbDeviceFactory.SetTypeId(LteSimpleNetDevice::GetTypeId());
    m_ueDeviceFactory.SetTypeId(LteSimpleNetDevice::GetTypeId());
}

void
LteSimpleHelper::DoInitialize()
{
    NS_LOG_FUNCTION(this);

    m_phyChannel = CreateObject<SimpleChannel>();

    Object::DoInitialize();
}

LteSimpleHelper::~LteSimpleHelper()
{
    NS_LOG_FUNCTION(this);
}

TypeId
LteSimpleHelper::GetTypeId()
{
    static TypeId tid = TypeId("ns3::LteSimpleHelper")
                            .SetParent<Object>()
                            .AddConstructor<LteSimpleHelper>()
                            .AddAttribute("RlcEntity",
                                          "Specify which type of RLC will be used. ",
                                          EnumValue(RLC_UM),
                                          MakeEnumAccessor<LteRlcEntityType_t>(
                                              &LteSimpleHelper::m_lteRlcEntityType),
                                          MakeEnumChecker(RLC_UM, "RlcUm", RLC_AM, "RlcAm"));
    return tid;
}

void
LteSimpleHelper::DoDispose()
{
    NS_LOG_FUNCTION(this);
    m_phyChannel = nullptr;

    m_enbMac->Dispose();
    m_enbMac = nullptr;
    m_ueMac->Dispose();
    m_ueMac = nullptr;

    Object::DoDispose();
}

NetDeviceContainer
LteSimpleHelper::InstallEnbDevice(NodeContainer c)
{
    NS_LOG_FUNCTION(this);
    Initialize(); // will run DoInitialize () if necessary
    NetDeviceContainer devices;
    for (auto i = c.Begin(); i != c.End(); ++i)
    {
        Ptr<Node> node = *i;
        Ptr<NetDevice> device = InstallSingleEnbDevice(node);
        devices.Add(device);
    }
    return devices;
}

NetDeviceContainer
LteSimpleHelper::InstallUeDevice(NodeContainer c)
{
    NS_LOG_FUNCTION(this);
    NetDeviceContainer devices;
    for (auto i = c.Begin(); i != c.End(); ++i)
    {
        Ptr<Node> node = *i;
        Ptr<NetDevice> device = InstallSingleUeDevice(node);
        devices.Add(device);
    }
    return devices;
}

Ptr<NetDevice>
LteSimpleHelper::InstallSingleEnbDevice(Ptr<Node> n)
{
    NS_LOG_FUNCTION(this);

    m_enbRrc = CreateObject<LteTestRrc>();
    m_enbPdcp = CreateObject<LtePdcp>();

    if (m_lteRlcEntityType == RLC_UM)
    {
        m_enbRlc = CreateObject<LteRlcUm>();
    }
    else // m_lteRlcEntityType == RLC_AM
    {
        m_enbRlc = CreateObject<LteRlcAm>();
    }

    m_enbRlc->SetRnti(11);
    m_enbRlc->SetLcId(12);

    Ptr<LteSimpleNetDevice> enbDev = m_enbDeviceFactory.Create<LteSimpleNetDevice>();
    enbDev->SetAddress(Mac48Address::Allocate());
    enbDev->SetChannel(m_phyChannel);

    n->AddDevice(enbDev);

    m_enbMac = CreateObject<LteTestMac>();
    m_enbMac->SetDevice(enbDev);

    m_enbRrc->SetDevice(enbDev);

    enbDev->SetReceiveCallback(MakeCallback(&LteTestMac::Receive, m_enbMac));

    // Connect SAPs: RRC <-> PDCP <-> RLC <-> MAC

    m_enbRrc->SetLtePdcpSapProvider(m_enbPdcp->GetLtePdcpSapProvider());
    m_enbPdcp->SetLtePdcpSapUser(m_enbRrc->GetLtePdcpSapUser());

    m_enbPdcp->SetLteRlcSapProvider(m_enbRlc->GetLteRlcSapProvider());
    m_enbRlc->SetLteRlcSapUser(m_enbPdcp->GetLteRlcSapUser());

    m_enbRlc->SetLteMacSapProvider(m_enbMac->GetLteMacSapProvider());
    m_enbMac->SetLteMacSapUser(m_enbRlc->GetLteMacSapUser());

    return enbDev;
}

Ptr<NetDevice>
LteSimpleHelper::InstallSingleUeDevice(Ptr<Node> n)
{
    NS_LOG_FUNCTION(this);

    m_ueRrc = CreateObject<LteTestRrc>();
    m_uePdcp = CreateObject<LtePdcp>();

    if (m_lteRlcEntityType == RLC_UM)
    {
        m_ueRlc = CreateObject<LteRlcUm>();
    }
    else // m_lteRlcEntityType == RLC_AM
    {
        m_ueRlc = CreateObject<LteRlcAm>();
    }

    m_ueRlc->SetRnti(21);
    m_ueRlc->SetLcId(22);

    Ptr<LteSimpleNetDevice> ueDev = m_ueDeviceFactory.Create<LteSimpleNetDevice>();
    ueDev->SetAddress(Mac48Address::Allocate());
    ueDev->SetChannel(m_phyChannel);

    n->AddDevice(ueDev);

    m_ueMac = CreateObject<LteTestMac>();
    m_ueMac->SetDevice(ueDev);

    ueDev->SetReceiveCallback(MakeCallback(&LteTestMac::Receive, m_ueMac));

    // Connect SAPs: RRC <-> PDCP <-> RLC <-> MAC

    m_ueRrc->SetLtePdcpSapProvider(m_uePdcp->GetLtePdcpSapProvider());
    m_uePdcp->SetLtePdcpSapUser(m_ueRrc->GetLtePdcpSapUser());

    m_uePdcp->SetLteRlcSapProvider(m_ueRlc->GetLteRlcSapProvider());
    m_ueRlc->SetLteRlcSapUser(m_uePdcp->GetLteRlcSapUser());

    m_ueRlc->SetLteMacSapProvider(m_ueMac->GetLteMacSapProvider());
    m_ueMac->SetLteMacSapUser(m_ueRlc->GetLteMacSapUser());

    return ueDev;
}

void
LteSimpleHelper::EnableLogComponents()
{
    auto level = (LogLevel)(LOG_LEVEL_ALL | LOG_PREFIX_TIME | LOG_PREFIX_NODE | LOG_PREFIX_FUNC);

    LogComponentEnable("Config", level);
    LogComponentEnable("LteSimpleHelper", level);
    LogComponentEnable("LteTestEntities", level);
    LogComponentEnable("LtePdcp", level);
    LogComponentEnable("LteRlc", level);
    LogComponentEnable("LteRlcUm", level);
    LogComponentEnable("LteRlcAm", level);
    LogComponentEnable("LteSimpleNetDevice", level);
    LogComponentEnable("SimpleNetDevice", level);
    LogComponentEnable("SimpleChannel", level);
}

void
LteSimpleHelper::EnableTraces()
{
    //   EnableMacTraces ();
    EnableRlcTraces();
    EnablePdcpTraces();
}

void
LteSimpleHelper::EnableRlcTraces()
{
    EnableDlRlcTraces();
    EnableUlRlcTraces();
}

/**
 * DL transmit PDU callback
 *
 * @param rlcStats the stats calculator
 * @param path
 * @param rnti the RNTI
 * @param lcid the LCID
 * @param packetSize the packet size
 */
void
LteSimpleHelperDlTxPduCallback(Ptr<RadioBearerStatsCalculator> rlcStats,
                               std::string path,
                               uint16_t rnti,
                               uint8_t lcid,
                               uint32_t packetSize)
{
    NS_LOG_FUNCTION(rlcStats << path << rnti << (uint16_t)lcid << packetSize);
    uint64_t imsi = 111;
    uint16_t cellId = 222;
    rlcStats->DlTxPdu(cellId, imsi, rnti, lcid, packetSize);
}

/**
 * DL receive PDU callback
 *
 * @param rlcStats the stats calculator
 * @param path
 * @param rnti the RNTI
 * @param lcid the LCID
 * @param packetSize the packet size
 * @param delay the delay
 */
void
LteSimpleHelperDlRxPduCallback(Ptr<RadioBearerStatsCalculator> rlcStats,
                               std::string path,
                               uint16_t rnti,
                               uint8_t lcid,
                               uint32_t packetSize,
                               uint64_t delay)
{
    NS_LOG_FUNCTION(rlcStats << path << rnti << (uint16_t)lcid << packetSize << delay);
    uint64_t imsi = 333;
    uint16_t cellId = 555;
    rlcStats->DlRxPdu(cellId, imsi, rnti, lcid, packetSize, delay);
}

void
LteSimpleHelper::EnableDlRlcTraces()
{
    NS_LOG_FUNCTION_NOARGS();

    //   Config::Connect ("/NodeList/*/DeviceList/*/LteRlc/TxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperDlTxPduCallback, m_rlcStats));
    //   Config::Connect ("/NodeList/*/DeviceList/*/LteRlc/RxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperDlRxPduCallback, m_rlcStats));
}

/**
 * UL transmit PDU callback
 *
 * @param rlcStats the stats calculator
 * @param path
 * @param rnti the RNTI
 * @param lcid the LCID
 * @param packetSize the packet size
 */
void
LteSimpleHelperUlTxPduCallback(Ptr<RadioBearerStatsCalculator> rlcStats,
                               std::string path,
                               uint16_t rnti,
                               uint8_t lcid,
                               uint32_t packetSize)
{
    NS_LOG_FUNCTION(rlcStats << path << rnti << (uint16_t)lcid << packetSize);
    uint64_t imsi = 1111;
    uint16_t cellId = 555;
    rlcStats->UlTxPdu(cellId, imsi, rnti, lcid, packetSize);
}

/**
 * UL receive PDU callback
 *
 * @param rlcStats the stats calculator
 * @param path
 * @param rnti the RNTI
 * @param lcid the LCID
 * @param packetSize the packet size
 * @param delay the delay
 */
void
LteSimpleHelperUlRxPduCallback(Ptr<RadioBearerStatsCalculator> rlcStats,
                               std::string path,
                               uint16_t rnti,
                               uint8_t lcid,
                               uint32_t packetSize,
                               uint64_t delay)
{
    NS_LOG_FUNCTION(rlcStats << path << rnti << (uint16_t)lcid << packetSize << delay);
    uint64_t imsi = 444;
    uint16_t cellId = 555;
    rlcStats->UlRxPdu(cellId, imsi, rnti, lcid, packetSize, delay);
}

void
LteSimpleHelper::EnableUlRlcTraces()
{
    NS_LOG_FUNCTION_NOARGS();

    //   Config::Connect ("/NodeList/*/DeviceList/*/LteRlc/TxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperUlTxPduCallback, m_rlcStats));
    //   Config::Connect ("/NodeList/*/DeviceList/*/LteRlc/RxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperUlRxPduCallback, m_rlcStats));
}

void
LteSimpleHelper::EnablePdcpTraces()
{
    EnableDlPdcpTraces();
    EnableUlPdcpTraces();
}

void
LteSimpleHelper::EnableDlPdcpTraces()
{
    NS_LOG_FUNCTION_NOARGS();

    //   Config::Connect ("/NodeList/*/DeviceList/*/LtePdcp/TxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperDlTxPduCallback, m_pdcpStats));
    //   Config::Connect ("/NodeList/*/DeviceList/*/LtePdcp/RxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperDlRxPduCallback, m_pdcpStats));
}

void
LteSimpleHelper::EnableUlPdcpTraces()
{
    NS_LOG_FUNCTION_NOARGS();

    //   Config::Connect ("/NodeList/*/DeviceList/*/LtePdcp/TxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperUlTxPduCallback, m_pdcpStats));
    //   Config::Connect ("/NodeList/*/DeviceList/*/LtePdcp/RxPDU",
    //                    MakeBoundCallback (&LteSimpleHelperUlRxPduCallback, m_pdcpStats));
}

} // namespace ns3

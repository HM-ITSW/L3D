/*
 * Copyright (c) 2010 TELEMATICS LAB, DEE - Politecnico di Bari
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Giuseppe Piro  <g.piro@poliba.it>
 *         Nicola Baldo <nbaldo@cttc.es>
 *         Marco Miozzo <mmiozzo@cttc.es>
 * Modified by:
 *          Danilo Abrignani <danilo.abrignani@unibo.it> (Carrier Aggregation - GSoC 2015)
 *          Biljana Bojovic <biljana.bojovic@cttc.es> (Carrier Aggregation)
 */

#include "lte-ue-net-device.h"

#include "epc-ue-nas.h"
#include "lte-enb-net-device.h"
#include "lte-net-device.h"
#include "lte-ue-component-carrier-manager.h"
#include "lte-ue-mac.h"
#include "lte-ue-phy.h"
#include "lte-ue-rrc.h"

#include "ns3/callback.h"
#include "ns3/enum.h"
#include "ns3/ipv4-header.h"
#include "ns3/ipv4-l3-protocol.h"
#include "ns3/ipv4.h"
#include "ns3/ipv6-header.h"
#include "ns3/ipv6-l3-protocol.h"
#include "ns3/ipv6.h"
#include "ns3/llc-snap-header.h"
#include "ns3/log.h"
#include "ns3/node.h"
#include "ns3/object-factory.h"
#include "ns3/object-map.h"
#include "ns3/packet-burst.h"
#include "ns3/packet.h"
#include "ns3/pointer.h"
#include "ns3/simulator.h"
#include "ns3/trace-source-accessor.h"
#include "ns3/uinteger.h"

namespace ns3
{

NS_LOG_COMPONENT_DEFINE("LteUeNetDevice");

NS_OBJECT_ENSURE_REGISTERED(LteUeNetDevice);

TypeId
LteUeNetDevice::GetTypeId()
{
    static TypeId tid =
        TypeId("ns3::LteUeNetDevice")
            .SetParent<LteNetDevice>()
            .AddConstructor<LteUeNetDevice>()
            .AddAttribute("EpcUeNas",
                          "The NAS associated to this UeNetDevice",
                          PointerValue(),
                          MakePointerAccessor(&LteUeNetDevice::m_nas),
                          MakePointerChecker<EpcUeNas>())
            .AddAttribute("LteUeRrc",
                          "The RRC associated to this UeNetDevice",
                          PointerValue(),
                          MakePointerAccessor(&LteUeNetDevice::m_rrc),
                          MakePointerChecker<LteUeRrc>())
            .AddAttribute("LteUeComponentCarrierManager",
                          "The ComponentCarrierManager associated to this UeNetDevice",
                          PointerValue(),
                          MakePointerAccessor(&LteUeNetDevice::m_componentCarrierManager),
                          MakePointerChecker<LteUeComponentCarrierManager>())
            .AddAttribute("ComponentCarrierMapUe",
                          "List of all component Carrier.",
                          ObjectMapValue(),
                          MakeObjectMapAccessor(&LteUeNetDevice::m_ccMap),
                          MakeObjectMapChecker<ComponentCarrierUe>())
            .AddAttribute("Imsi",
                          "International Mobile Subscriber Identity assigned to this UE",
                          UintegerValue(0),
                          MakeUintegerAccessor(&LteUeNetDevice::m_imsi),
                          MakeUintegerChecker<uint64_t>())
            .AddAttribute(
                "DlEarfcn",
                "Downlink E-UTRA Absolute Radio Frequency Channel Number (EARFCN) "
                "as per 3GPP 36.101 Section 5.7.3.",
                UintegerValue(100),
                MakeUintegerAccessor(&LteUeNetDevice::SetDlEarfcn, &LteUeNetDevice::GetDlEarfcn),
                MakeUintegerChecker<uint32_t>(0, 262143))
            .AddAttribute(
                "CsgId",
                "The Closed Subscriber Group (CSG) identity that this UE is associated with, "
                "i.e., giving the UE access to cells which belong to this particular CSG. "
                "This restriction only applies to initial cell selection and EPC-enabled "
                "simulation. "
                "This does not revoke the UE's access to non-CSG cells.",
                UintegerValue(0),
                MakeUintegerAccessor(&LteUeNetDevice::SetCsgId, &LteUeNetDevice::GetCsgId),
                MakeUintegerChecker<uint32_t>());

    return tid;
}

LteUeNetDevice::LteUeNetDevice()
    : m_isConstructed(false)
{
    NS_LOG_FUNCTION(this);
}

LteUeNetDevice::~LteUeNetDevice()
{
    NS_LOG_FUNCTION(this);
}

void
LteUeNetDevice::DoDispose()
{
    NS_LOG_FUNCTION(this);
    m_targetEnb = nullptr;

    m_rrc->Dispose();
    m_rrc = nullptr;

    m_nas->Dispose();
    m_nas = nullptr;
    for (uint32_t i = 0; i < m_ccMap.size(); i++)
    {
        m_ccMap.at(i)->Dispose();
    }
    m_componentCarrierManager->Dispose();
    LteNetDevice::DoDispose();
}

void
LteUeNetDevice::UpdateConfig()
{
    NS_LOG_FUNCTION(this);

    if (m_isConstructed)
    {
        NS_LOG_LOGIC(this << " Updating configuration: IMSI " << m_imsi << " CSG ID " << m_csgId);
        m_nas->SetImsi(m_imsi);
        m_rrc->SetImsi(m_imsi);
        m_nas->SetCsgId(m_csgId); // this also handles propagation to RRC
    }
    else
    {
        /*
         * NAS and RRC instances are not be ready yet, so do nothing now and
         * expect ``DoInitialize`` to re-invoke this function.
         */
    }
}

Ptr<LteUeMac>
LteUeNetDevice::GetMac() const
{
    NS_LOG_FUNCTION(this);
    return m_ccMap.at(0)->GetMac();
}

Ptr<LteUeRrc>
LteUeNetDevice::GetRrc() const
{
    NS_LOG_FUNCTION(this);
    return m_rrc;
}

Ptr<LteUePhy>
LteUeNetDevice::GetPhy() const
{
    NS_LOG_FUNCTION(this);
    return m_ccMap.at(0)->GetPhy();
}

Ptr<LteUeComponentCarrierManager>
LteUeNetDevice::GetComponentCarrierManager() const
{
    NS_LOG_FUNCTION(this);
    return m_componentCarrierManager;
}

Ptr<EpcUeNas>
LteUeNetDevice::GetNas() const
{
    NS_LOG_FUNCTION(this);
    return m_nas;
}

uint64_t
LteUeNetDevice::GetImsi() const
{
    NS_LOG_FUNCTION(this);
    return m_imsi;
}

uint32_t
LteUeNetDevice::GetDlEarfcn() const
{
    NS_LOG_FUNCTION(this);
    return m_dlEarfcn;
}

void
LteUeNetDevice::SetDlEarfcn(uint32_t earfcn)
{
    NS_LOG_FUNCTION(this << earfcn);
    m_dlEarfcn = earfcn;
}

uint32_t
LteUeNetDevice::GetCsgId() const
{
    NS_LOG_FUNCTION(this);
    return m_csgId;
}

void
LteUeNetDevice::SetCsgId(uint32_t csgId)
{
    NS_LOG_FUNCTION(this << csgId);
    m_csgId = csgId;
    UpdateConfig(); // propagate the change down to NAS and RRC
}

void
LteUeNetDevice::SetTargetEnb(Ptr<LteEnbNetDevice> enb)
{
    NS_LOG_FUNCTION(this << enb);
    m_targetEnb = enb;
}

Ptr<LteEnbNetDevice>
LteUeNetDevice::GetTargetEnb()
{
    NS_LOG_FUNCTION(this);
    return m_targetEnb;
}

std::map<uint8_t, Ptr<ComponentCarrierUe>>
LteUeNetDevice::GetCcMap()
{
    return m_ccMap;
}

void
LteUeNetDevice::SetCcMap(std::map<uint8_t, Ptr<ComponentCarrierUe>> ccm)
{
    m_ccMap = ccm;
}

void
LteUeNetDevice::DoInitialize()
{
    NS_LOG_FUNCTION(this);
    m_isConstructed = true;
    UpdateConfig();

    for (auto it = m_ccMap.begin(); it != m_ccMap.end(); ++it)
    {
        it->second->GetPhy()->Initialize();
        it->second->GetMac()->Initialize();
    }
    m_rrc->Initialize();
}

bool
LteUeNetDevice::Send(Ptr<Packet> packet, const Address& dest, uint16_t protocolNumber)
{
    NS_LOG_FUNCTION(this << packet << dest << protocolNumber);
    NS_ABORT_MSG_IF(protocolNumber != Ipv4L3Protocol::PROT_NUMBER &&
                        protocolNumber != Ipv6L3Protocol::PROT_NUMBER,
                    "unsupported protocol " << protocolNumber
                                            << ", only IPv4 and IPv6 are supported");
    return m_nas->Send(packet, protocolNumber);
}

} // namespace ns3

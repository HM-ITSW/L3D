/*
 *  Copyright (c) 2007,2008, 2009 INRIA, UDcast
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Mohamed Amine Ismail <amine.ismail@sophia.inria.fr>
 *                              <amine.ismail@udcast.com>
 */

#include "ns3/abort.h"
#include "ns3/config.h"
#include "ns3/inet-socket-address.h"
#include "ns3/internet-stack-helper.h"
#include "ns3/ipv4-address-helper.h"
#include "ns3/log.h"
#include "ns3/simple-channel.h"
#include "ns3/simple-net-device.h"
#include "ns3/simulator.h"
#include "ns3/string.h"
#include "ns3/test.h"
#include "ns3/udp-client-server-helper.h"
#include "ns3/udp-echo-helper.h"
#include "ns3/udp-server.h"
#include "ns3/uinteger.h"

#include <fstream>

using namespace ns3;

/**
 * @ingroup applications
 * @defgroup applications-test applications module tests
 */

/**
 * @ingroup applications-test
 * @ingroup tests
 *
 * Test that all the UDP packets generated by an UdpClient application are
 * correctly received by an UdpServer application
 */
class UdpClientServerTestCase : public TestCase
{
  public:
    UdpClientServerTestCase();
    ~UdpClientServerTestCase() override;

  private:
    void DoRun() override;
};

UdpClientServerTestCase::UdpClientServerTestCase()
    : TestCase("Test that all the udp packets generated by an udpClient application are correctly "
               "received by an udpServer application")
{
}

UdpClientServerTestCase::~UdpClientServerTestCase()
{
}

void
UdpClientServerTestCase::DoRun()
{
    NodeContainer n;
    n.Create(2);

    InternetStackHelper internet;
    internet.Install(n);

    // link the two nodes
    Ptr<SimpleNetDevice> txDev = CreateObject<SimpleNetDevice>();
    Ptr<SimpleNetDevice> rxDev = CreateObject<SimpleNetDevice>();
    n.Get(0)->AddDevice(txDev);
    n.Get(1)->AddDevice(rxDev);
    Ptr<SimpleChannel> channel1 = CreateObject<SimpleChannel>();
    rxDev->SetChannel(channel1);
    txDev->SetChannel(channel1);
    NetDeviceContainer d;
    d.Add(txDev);
    d.Add(rxDev);

    Ipv4AddressHelper ipv4;

    ipv4.SetBase("10.1.1.0", "255.255.255.0");
    Ipv4InterfaceContainer i = ipv4.Assign(d);

    uint16_t port = 4000;
    UdpServerHelper serverHelper(port);
    auto serverApp = serverHelper.Install(n.Get(1));
    serverApp.Start(Seconds(1));
    serverApp.Stop(Seconds(10));

    uint32_t MaxPacketSize = 1024;
    Time interPacketInterval = Seconds(1.);
    uint32_t maxPacketCount = 10;
    // This voluntarily invokes the c'tor not doing conversion
    UdpClientHelper clientHelper(InetSocketAddress(i.GetAddress(1), port));
    clientHelper.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
    clientHelper.SetAttribute("Interval", TimeValue(interPacketInterval));
    clientHelper.SetAttribute("PacketSize", UintegerValue(MaxPacketSize));
    auto clientApp = clientHelper.Install(n.Get(0));
    clientApp.Start(Seconds(2));
    clientApp.Stop(Seconds(10));

    Simulator::Run();
    Simulator::Destroy();

    auto server = DynamicCast<UdpServer>(serverApp.Get(0));
    NS_TEST_ASSERT_MSG_EQ(server->GetLost(), 0, "Packets were lost !");
    NS_TEST_ASSERT_MSG_EQ(server->GetReceived(), 8, "Did not receive expected number of packets !");
}

/**
 * Test that all the udp packets generated by an udpTraceClient application are
 * correctly received by an udpServer application
 */

class UdpTraceClientServerTestCase : public TestCase
{
  public:
    UdpTraceClientServerTestCase();
    ~UdpTraceClientServerTestCase() override;

  private:
    void DoRun() override;
};

UdpTraceClientServerTestCase::UdpTraceClientServerTestCase()
    : TestCase("Test that all the udp packets generated by an udpTraceClient application are "
               "correctly received by an udpServer application")
{
}

UdpTraceClientServerTestCase::~UdpTraceClientServerTestCase()
{
}

void
UdpTraceClientServerTestCase::DoRun()
{
    NodeContainer n;
    n.Create(2);

    InternetStackHelper internet;
    internet.Install(n);

    // link the two nodes
    Ptr<SimpleNetDevice> txDev = CreateObject<SimpleNetDevice>();
    Ptr<SimpleNetDevice> rxDev = CreateObject<SimpleNetDevice>();
    n.Get(0)->AddDevice(txDev);
    n.Get(1)->AddDevice(rxDev);
    Ptr<SimpleChannel> channel1 = CreateObject<SimpleChannel>();
    rxDev->SetChannel(channel1);
    txDev->SetChannel(channel1);
    NetDeviceContainer d;
    d.Add(txDev);
    d.Add(rxDev);

    Ipv4AddressHelper ipv4;
    ipv4.SetBase("10.1.1.0", "255.255.255.0");
    Ipv4InterfaceContainer i = ipv4.Assign(d);

    uint16_t port = 4000;
    UdpServerHelper serverHelper(InetSocketAddress(Ipv4Address::GetAny(), port));
    auto serverApp = serverHelper.Install(n.Get(1));
    serverApp.Start(Seconds(1));
    serverApp.Stop(Seconds(10));

    uint32_t MaxPacketSize = 1400 - 28; // ip/udp header
    UdpTraceClientHelper clientHelper(InetSocketAddress(i.GetAddress(1), port));
    clientHelper.SetAttribute("MaxPacketSize", UintegerValue(MaxPacketSize));
    auto clientApp = clientHelper.Install(n.Get(0));
    clientApp.Start(Seconds(2));
    clientApp.Stop(Seconds(10));

    Simulator::Run();
    Simulator::Destroy();

    auto server = DynamicCast<UdpServer>(serverApp.Get(0));
    NS_TEST_ASSERT_MSG_EQ(server->GetLost(), 0, "Packets were lost !");
    NS_TEST_ASSERT_MSG_EQ(server->GetReceived(),
                          247,
                          "Did not receive expected number of packets !");
}

/**
 * Test that all the PacketLossCounter class checks loss correctly in different cases
 */

class PacketLossCounterTestCase : public TestCase
{
  public:
    PacketLossCounterTestCase();
    ~PacketLossCounterTestCase() override;

  private:
    void DoRun() override;
};

PacketLossCounterTestCase::PacketLossCounterTestCase()
    : TestCase("Test that all the PacketLossCounter class checks loss correctly in different cases")
{
}

PacketLossCounterTestCase::~PacketLossCounterTestCase()
{
}

void
PacketLossCounterTestCase::DoRun()
{
    PacketLossCounter lossCounter(32);
    lossCounter.NotifyReceived(32); // out of order
    for (uint32_t i = 0; i < 64; i++)
    {
        lossCounter.NotifyReceived(i);
    }

    NS_TEST_ASSERT_MSG_EQ(lossCounter.GetLost(), 0, "Check that 0 packets are lost");

    for (uint32_t i = 65; i < 128; i++) // drop (1) seqNum 64
    {
        lossCounter.NotifyReceived(i);
    }
    NS_TEST_ASSERT_MSG_EQ(lossCounter.GetLost(), 1, "Check that 1 packet is lost");

    for (uint32_t i = 134; i < 200; i++) // drop seqNum 128,129,130,131,132,133
    {
        lossCounter.NotifyReceived(i);
    }
    NS_TEST_ASSERT_MSG_EQ(lossCounter.GetLost(), 7, "Check that 7 (6+1) packets are lost");

    // reordering without loss
    lossCounter.NotifyReceived(205);
    lossCounter.NotifyReceived(206);
    lossCounter.NotifyReceived(207);
    lossCounter.NotifyReceived(200);
    lossCounter.NotifyReceived(201);
    lossCounter.NotifyReceived(202);
    lossCounter.NotifyReceived(203);
    lossCounter.NotifyReceived(204);
    for (uint32_t i = 205; i < 250; i++)
    {
        lossCounter.NotifyReceived(i);
    }
    NS_TEST_ASSERT_MSG_EQ(lossCounter.GetLost(),
                          7,
                          "Check that 7 (6+1) packets are lost even when reordering happens");

    // reordering with loss
    lossCounter.NotifyReceived(255);
    // drop (2) seqNum 250, 251
    lossCounter.NotifyReceived(252);
    lossCounter.NotifyReceived(253);
    lossCounter.NotifyReceived(254);
    for (uint32_t i = 256; i < 300; i++)
    {
        lossCounter.NotifyReceived(i);
    }
    NS_TEST_ASSERT_MSG_EQ(lossCounter.GetLost(), 9, "Check that 9 (6+1+2) packet are lost");
}

/**
 * Test fix for \bugid{1378}
 */

class UdpEchoClientSetFillTestCase : public TestCase
{
  public:
    UdpEchoClientSetFillTestCase();
    ~UdpEchoClientSetFillTestCase() override;

  private:
    void DoRun() override;
};

UdpEchoClientSetFillTestCase::UdpEchoClientSetFillTestCase()
    : TestCase("Test that the UdpEchoClient::SetFill class sets packet size (bug 1378)")
{
}

UdpEchoClientSetFillTestCase::~UdpEchoClientSetFillTestCase()
{
}

void
UdpEchoClientSetFillTestCase::DoRun()
{
    NodeContainer nodes;
    nodes.Create(2);

    InternetStackHelper internet;
    internet.Install(nodes);

    Ptr<SimpleNetDevice> txDev = CreateObject<SimpleNetDevice>();
    Ptr<SimpleNetDevice> rxDev = CreateObject<SimpleNetDevice>();
    nodes.Get(0)->AddDevice(txDev);
    nodes.Get(1)->AddDevice(rxDev);
    Ptr<SimpleChannel> channel1 = CreateObject<SimpleChannel>();
    rxDev->SetChannel(channel1);
    txDev->SetChannel(channel1);
    NetDeviceContainer d;
    d.Add(txDev);
    d.Add(rxDev);

    Ipv4AddressHelper ipv4;

    ipv4.SetBase("10.1.1.0", "255.255.255.0");
    Ipv4InterfaceContainer interfaces = ipv4.Assign(d);

    uint16_t port = 5000;
    UdpEchoServerHelper echoServer(InetSocketAddress(Ipv4Address::GetAny(), port));
    ApplicationContainer serverApps = echoServer.Install(nodes.Get(1));
    serverApps.Start(Seconds(1));
    serverApps.Stop(Seconds(10));
    UdpEchoClientHelper echoClient(InetSocketAddress(interfaces.GetAddress(1), port));
    echoClient.SetAttribute("MaxPackets", UintegerValue(1));
    echoClient.SetAttribute("Interval", TimeValue(Seconds(1)));
    echoClient.SetAttribute("PacketSize", UintegerValue(1024));

    ApplicationContainer clientApps = echoClient.Install(nodes.Get(0));

    uint8_t array[64];
    uint8_t i;
    for (i = 0; i < 64; i++)
    {
        array[i] = i;
    }
    echoClient.SetFill(clientApps.Get(0), &(array[0]), (uint32_t)64, (uint32_t)64);

    clientApps.Start(Seconds(2));
    clientApps.Stop(Seconds(10));

    Simulator::Run();
    Simulator::Destroy();
}

/**
 * @ingroup applications-test
 * @ingroup tests
 *
 * @brief UDP client and server TestSuite
 */
class UdpClientServerTestSuite : public TestSuite
{
  public:
    UdpClientServerTestSuite();
};

UdpClientServerTestSuite::UdpClientServerTestSuite()
    : TestSuite("applications-udp-client-server", Type::UNIT)
{
    AddTestCase(new UdpTraceClientServerTestCase, TestCase::Duration::QUICK);
    AddTestCase(new UdpClientServerTestCase, TestCase::Duration::QUICK);
    AddTestCase(new PacketLossCounterTestCase, TestCase::Duration::QUICK);
    AddTestCase(new UdpEchoClientSetFillTestCase, TestCase::Duration::QUICK);
}

static UdpClientServerTestSuite
    udpClientServerTestSuite; //!< Static variable for test initialization

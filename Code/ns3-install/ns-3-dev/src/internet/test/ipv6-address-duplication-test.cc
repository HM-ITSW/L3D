/*
 * Copyright (c) 2020 Universita' di Firenze
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Tommaso Pecorella <tommaso.pecorella@unifi.it>
 */

#include "ns3/boolean.h"
#include "ns3/icmpv6-l4-protocol.h"
#include "ns3/inet6-socket-address.h"
#include "ns3/internet-stack-helper.h"
#include "ns3/ipv6-address-helper.h"
#include "ns3/ipv6-l3-protocol.h"
#include "ns3/ipv6-routing-helper.h"
#include "ns3/ipv6-static-routing.h"
#include "ns3/log.h"
#include "ns3/node.h"
#include "ns3/simple-channel.h"
#include "ns3/simple-net-device-helper.h"
#include "ns3/simple-net-device.h"
#include "ns3/simulator.h"
#include "ns3/socket-factory.h"
#include "ns3/socket.h"
#include "ns3/test.h"
#include "ns3/udp-l4-protocol.h"
#include "ns3/udp-socket-factory.h"

#include <limits>
#include <string>

using namespace ns3;

/**
 * @ingroup internet-test
 *
 * @brief IPv6 Duplicate Address Detection Test
 */
class Ipv6DadTest : public TestCase
{
  public:
    void DoRun() override;
    Ipv6DadTest();
};

Ipv6DadTest::Ipv6DadTest()
    : TestCase("IPv6 Duplicate Address Detection")
{
}

void
Ipv6DadTest::DoRun()
{
    // Create topology

    Ptr<Node> Node1 = CreateObject<Node>();
    Ptr<Node> Node2 = CreateObject<Node>();

    NodeContainer nodes(Node1, Node2);

    SimpleNetDeviceHelper helperChannel;
    helperChannel.SetNetDevicePointToPointMode(true);
    NetDeviceContainer net = helperChannel.Install(nodes);

    InternetStackHelper internetv6;
    internetv6.Install(nodes);

    Ipv6AddressHelper ipv6helper;
    Ipv6InterfaceContainer iic = ipv6helper.AssignWithoutAddress(net);

    Ptr<NetDevice> device;
    Ipv6InterfaceAddress ipv6Addr;

    Ptr<Ipv6> ipv6node1;
    int32_t ifIndexNode1;
    ipv6node1 = Node1->GetObject<Ipv6>();
    device = net.Get(0);
    ifIndexNode1 = ipv6node1->GetInterfaceForDevice(device);
    ipv6Addr = Ipv6InterfaceAddress(Ipv6Address("2001:1::1"), Ipv6Prefix(64));
    ipv6node1->AddAddress(ifIndexNode1, ipv6Addr);

    Ptr<Ipv6> ipv6node2;
    int32_t ifIndexNode2;
    ipv6node2 = Node2->GetObject<Ipv6>();
    device = net.Get(1);
    ifIndexNode2 = ipv6node2->GetInterfaceForDevice(device);
    ipv6Addr = Ipv6InterfaceAddress(Ipv6Address("2001:1::1"), Ipv6Prefix(64));
    ipv6node2->AddAddress(ifIndexNode2, ipv6Addr);

    Simulator::Run();

    Ipv6InterfaceAddress addr1 = ipv6node1->GetAddress(ifIndexNode1, 1);
    Ipv6InterfaceAddress::State_e node1AddrState = addr1.GetState();
    NS_TEST_ASSERT_MSG_EQ(node1AddrState,
                          Ipv6InterfaceAddress::INVALID,
                          "Failed to detect duplicate address on node 1");

    Ipv6InterfaceAddress addr2 = ipv6node2->GetAddress(ifIndexNode2, 1);
    Ipv6InterfaceAddress::State_e node2AddrState = addr2.GetState();
    NS_TEST_ASSERT_MSG_EQ(node2AddrState,
                          Ipv6InterfaceAddress::INVALID,
                          "Failed to detect duplicate address on node 2");

    Simulator::Destroy();
}

/**
 * @ingroup internet-test
 *
 * @brief IPv6 Duplicate Address Detection TestSuite
 */
class Ipv6DadTestSuite : public TestSuite
{
  public:
    Ipv6DadTestSuite()
        : TestSuite("ipv6-duplicate-address-detection", Type::UNIT)
    {
        AddTestCase(new Ipv6DadTest, TestCase::Duration::QUICK);
    }
};

static Ipv6DadTestSuite g_ipv6dadTestSuite; //!< Static variable for test initialization

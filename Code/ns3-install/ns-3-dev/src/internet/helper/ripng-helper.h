/*
 * Copyright (c) 2014 Universita' di Firenze, Italy
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Tommaso Pecorella <tommaso.pecorella@unifi.it>
 */

#ifndef RIPNG_HELPER_H
#define RIPNG_HELPER_H

#include "ipv6-routing-helper.h"

#include "ns3/node-container.h"
#include "ns3/node.h"
#include "ns3/object-factory.h"

#include <map>

namespace ns3
{

/**
 * @ingroup ipv6Helpers
 *
 * @brief Helper class that adds RIPng routing to nodes.
 *
 * This class is expected to be used in conjunction with
 * ns3::InternetStackHelper::SetRoutingHelper
 *
 */
class RipNgHelper : public Ipv6RoutingHelper
{
  public:
    /*
     * Construct an RipNgHelper to make life easier while adding RIPng
     * routing to nodes.
     */
    RipNgHelper();

    /**
     * @brief Construct an RipNgHelper from another previously
     * initialized instance (Copy Constructor).
     * @param o The object to copy from.
     */
    RipNgHelper(const RipNgHelper& o);

    ~RipNgHelper() override;

    // Delete assignment operator to avoid misuse
    RipNgHelper& operator=(const RipNgHelper&) = delete;

    /**
     * @returns pointer to clone of this RipNgHelper
     *
     * This method is mainly for internal use by the other helpers;
     * clients are expected to free the dynamic memory allocated by this method
     */
    RipNgHelper* Copy() const override;

    /**
     * @param node the node on which the routing protocol will run
     * @returns a newly-created routing protocol
     *
     * This method will be called by ns3::InternetStackHelper::Install
     */
    Ptr<Ipv6RoutingProtocol> Create(Ptr<Node> node) const override;

    /**
     * @param name the name of the attribute to set
     * @param value the value of the attribute to set.
     *
     * This method controls the attributes of ns3::RipNg
     */
    void Set(std::string name, const AttributeValue& value);

    /**
     * Assign a fixed random variable stream number to the random variables
     * used by this model. Return the number of streams (possibly zero) that
     * have been assigned. The Install() method should have previously been
     * called by the user.
     *
     * @param c NetDeviceContainer of the set of net devices for which the
     *          SixLowPanNetDevice should be modified to use a fixed stream
     * @param stream first stream index to use
     * @return the number of stream indices assigned by this helper
     */
    int64_t AssignStreams(NodeContainer c, int64_t stream);

    /**
     * @brief Install a default route in the node.
     *
     * The traffic will be routed to the nextHop, located on the specified
     * interface, unless a more specific route is found.
     *
     * @param node the node
     * @param nextHop the next hop
     * @param interface the network interface
     */
    void SetDefaultRouter(Ptr<Node> node, Ipv6Address nextHop, uint32_t interface);

    /**
     * @brief Exclude an interface from RIPng protocol.
     *
     * You have to call this function \a before installing RIPng in the nodes.
     *
     * Note: the exclusion means that RIPng will not be propagated on that interface.
     * The network prefix on that interface will be still considered in RIPng.
     *
     * @param node the node
     * @param interface the network interface to be excluded
     */
    void ExcludeInterface(Ptr<Node> node, uint32_t interface);

    /**
     * @brief Set a metric for an interface.
     *
     * You have to call this function \a before installing RIPng in the nodes.
     *
     * Note: RIPng will apply the metric on route message reception.
     * As a consequence, interface metric should be set on the receiver.
     *
     * @param node the node
     * @param interface the network interface
     * @param metric the interface metric
     */
    void SetInterfaceMetric(Ptr<Node> node, uint32_t interface, uint8_t metric);

  private:
    ObjectFactory m_factory; //!< Object Factory

    std::map<Ptr<Node>, std::set<uint32_t>> m_interfaceExclusions; //!< Interface Exclusion set
    std::map<Ptr<Node>, std::map<uint32_t, uint8_t>> m_interfaceMetrics; //!< Interface Metric set
};

} // namespace ns3

#endif /* RIPNG_HELPER_H */

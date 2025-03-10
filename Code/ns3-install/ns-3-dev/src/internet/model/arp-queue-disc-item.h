/*
 * Copyright (c) 2018 Universita' degli Studi di Napoli Federico II
 *
 * SPDX-License-Identifier: GPL-2.0-only
 */

#ifndef ARP_QUEUE_DISC_ITEM_H
#define ARP_QUEUE_DISC_ITEM_H

#include "arp-header.h"

#include "ns3/packet.h"
#include "ns3/queue-item.h"

namespace ns3
{

/**
 * @ingroup arp
 * @ingroup traffic-control
 *
 * ArpQueueDiscItem is a subclass of QueueDiscItem which stores ARP packets.
 * Header and payload are kept separate to allow the queue disc to hash the
 * fields of the header, which is added to the packet when the packet is dequeued.
 */
class ArpQueueDiscItem : public QueueDiscItem
{
  public:
    /**
     * @brief Create an ARP queue disc item containing an ARP packet.
     * @param p the packet included in the created item.
     * @param addr the destination MAC address
     * @param protocol the protocol number
     * @param header the ARP header
     */
    ArpQueueDiscItem(Ptr<Packet> p,
                     const Address& addr,
                     uint16_t protocol,
                     const ArpHeader& header);

    /** Destructor. */
    ~ArpQueueDiscItem() override;

    // Delete default constructor, copy constructor and assignment operator to avoid misuse
    ArpQueueDiscItem() = delete;
    ArpQueueDiscItem(const ArpQueueDiscItem&) = delete;
    ArpQueueDiscItem& operator=(const ArpQueueDiscItem&) = delete;

    /**
     * @return the correct packet size (header plus payload).
     */
    uint32_t GetSize() const override;

    /**
     * @return the header stored in this item..
     */
    const ArpHeader& GetHeader() const;

    /**
     * @brief Add the header to the packet
     */
    void AddHeader() override;

    /**
     * @brief Print the item contents.
     * @param os output stream in which the data should be printed.
     */
    void Print(std::ostream& os) const override;

    /**
     * @brief Inherited from the base class, but we cannot mark ARP packets
     * @return false
     */
    bool Mark() override;

    /**
     * @brief Computes the hash of the packet's 5-tuple
     *
     * @param perturbation hash perturbation value
     * @return the hash of the packet's 5-tuple
     */
    uint32_t Hash(uint32_t perturbation) const override;

  private:
    ArpHeader m_header; //!< The ARP header.
    bool m_headerAdded; //!< True if the header has already been added to the packet.
};

} // namespace ns3

#endif /* ARP_QUEUE_DISC_ITEM_H */

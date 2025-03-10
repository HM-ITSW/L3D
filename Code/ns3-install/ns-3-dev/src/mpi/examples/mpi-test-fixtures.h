/*
 *  Copyright 2018. Lawrence Livermore National Security, LLC.
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Steven Smith <smith84@llnl.gov>
 */

#ifndef MPI_TEST_FIXTURES_H
#define MPI_TEST_FIXTURES_H

#include <iomanip>
#include <ios>
#include <sstream>

/**
 * @file
 * @ingroup mpi
 *
 * Common methods for MPI examples.
 *
 * Since MPI output is coming from multiple processors it is the
 * ordering between the processors is non-deterministic.  For
 * regression testing the output is sorted to force a deterministic
 * ordering. Methods include here add line number to support
 * this sorting.
 *
 * Testing output is also grepped so only lines with "TEST" are
 * included.  Some MPI launchers emit extra text to output which must
 * be excluded for regression comparisons.
 */

namespace ns3
{

template <typename T>
class Ptr;
class Address;
class Packet;

/**
 * @ingroup mpi
 *
 * Write to std::cout only from rank 0.
 * Number line for sorting output of parallel runs.
 *
 * @param x The output operators.
 */
#define RANK0COUT(x)                                                                               \
    do                                                                                             \
        if (SinkTracer::GetWorldRank() == 0)                                                       \
        {                                                                                          \
            std::cout << "TEST : ";                                                                \
            std::ios_base::fmtflags f(std::cout.flags());                                          \
            std::cout << std::setfill('0') << std::setw(5) << SinkTracer::GetLineCount();          \
            std::cout.flags(f);                                                                    \
            std::cout << " : " << x;                                                               \
        }                                                                                          \
    while (false)

/**
 * @ingroup mpi
 *
 * Append to std::cout only from rank 0.
 * Number line for sorting output of parallel runs.
 *
 * @param x The output operators.
 */
#define RANK0COUTAPPEND(x)                                                                         \
    do                                                                                             \
        if (SinkTracer::GetWorldRank() == 0)                                                       \
        {                                                                                          \
            std::cout << x;                                                                        \
        }                                                                                          \
    while (false)

/**
 * @ingroup mpi
 *
 * Collects data about incoming packets.
 */
class SinkTracer
{
  public:
    /**
     * PacketSink Init.
     */
    static void Init();

    /**
     * PacketSink receive trace callback.
     * @copydetails ns3::Packet::TwoAddressTracedCallback
     */
    static void SinkTrace(const ns3::Ptr<const ns3::Packet> packet,
                          const ns3::Address& srcAddress,
                          const ns3::Address& destAddress);

    /**
     * Verify the sink trace count observed matches the expected count.
     * Prints message to std::cout indicating success or fail.
     *
     * @param expectedCount Expected number of packet received.
     */
    static void Verify(unsigned long expectedCount);

    /**
     * Get the source address and port, as a formatted string.
     *
     * @param [in] address The ns3::Address.
     * @return A string with the formatted address and port number.
     */
    static std::string FormatAddress(const ns3::Address address);

    /**
     * Get the MPI rank in the world communicator.
     *
     * @return MPI world rank.
     */
    static int GetWorldRank()
    {
        return m_worldRank;
    }

    /**
     * Get the MPI size of the world communicator.
     *
     * @return MPI world size.
     */
    static int GetWorldSize()
    {
        return m_worldSize;
    }

    /**
     * Get current line count and increment it.
     * @return the line count.
     */
    static int GetLineCount()
    {
        return m_line++;
    }

  private:
    static unsigned long m_sinkCount; //!< Running sum of number of SinkTrace calls observed
    static unsigned long m_line;      //!< Current output line number for ordering output
    static int m_worldRank;           //!< MPI CommWorld rank
    static int m_worldSize;           //!< MPI CommWorld size
};

} // namespace ns3

#endif // MPI_TEST_FIXTURES_H

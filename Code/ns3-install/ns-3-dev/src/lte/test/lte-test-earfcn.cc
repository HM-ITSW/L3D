/*
 * Copyright (c) 2011 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Nicola Baldo <nbaldo@cttc.es>
 */

#include "ns3/log.h"
#include "ns3/lte-spectrum-value-helper.h"
#include "ns3/test.h"

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("LteTestEarfcn");

/**
 * @ingroup lte-test
 *
 * @brief Test case that is testing if the frequency is properly generated
 * from provided EARFCN frequency.
 */

class LteEarfcnTestCase : public TestCase
{
  public:
    /**
     * Constructor
     *
     * @param str reference name
     * @param earfcn EARFCN
     * @param f frequency
     */
    LteEarfcnTestCase(const char* str, uint32_t earfcn, double f);
    ~LteEarfcnTestCase() override;

  protected:
    uint32_t m_earfcn; ///< the EARFCN
    double m_f;        ///< the frequency

  private:
    void DoRun() override;
};

LteEarfcnTestCase::LteEarfcnTestCase(const char* str, uint32_t earfcn, double f)
    : TestCase(str),
      m_earfcn(earfcn),
      m_f(f)
{
    NS_LOG_FUNCTION(this << str << earfcn << f);
}

LteEarfcnTestCase::~LteEarfcnTestCase()
{
}

void
LteEarfcnTestCase::DoRun()
{
    double f = LteSpectrumValueHelper::GetCarrierFrequency(m_earfcn);
    NS_TEST_ASSERT_MSG_EQ_TOL(f, m_f, 0.0000001, "wrong frequency");
}

/**
 * @ingroup lte-test
 *
 * @brief
 * Test case that is testing if the downlink frequency is properly
 * converted from provided downlink EARFCN frequency value.
 */

class LteEarfcnDlTestCase : public LteEarfcnTestCase
{
  public:
    /**
     * Constructor
     *
     * @param str reference name
     * @param earfcn EARFCN
     * @param f frequency
     */
    LteEarfcnDlTestCase(const char* str, uint32_t earfcn, double f);

  private:
    void DoRun() override;
};

LteEarfcnDlTestCase::LteEarfcnDlTestCase(const char* str, uint32_t earfcn, double f)
    : LteEarfcnTestCase(str, earfcn, f)
{
}

void
LteEarfcnDlTestCase::DoRun()
{
    //   LogLevel logLevel = (LogLevel)(LOG_PREFIX_FUNC | LOG_PREFIX_TIME | LOG_LEVEL_ALL);
    //   LogComponentEnable ("LteSpectrumValueHelper", logLevel);
    //   LogComponentEnable ("LteTestEarfcn", logLevel);

    double f = LteSpectrumValueHelper::GetDownlinkCarrierFrequency(m_earfcn);
    NS_TEST_ASSERT_MSG_EQ_TOL(f, m_f, 0.0000001, "wrong frequency");
}

/**
 * @ingroup lte-test
 *
 * @brief  Test case that is testing if the uplink frequency is properly
 * converted from provided uplink EARFCN frequency value.
 */

class LteEarfcnUlTestCase : public LteEarfcnTestCase
{
  public:
    /**
     * Constructor
     *
     * @param str reference name
     * @param earfcn EARFCN
     * @param f frequency
     */
    LteEarfcnUlTestCase(const char* str, uint32_t earfcn, double f);

  private:
    void DoRun() override;
};

LteEarfcnUlTestCase::LteEarfcnUlTestCase(const char* str, uint32_t earfcn, double f)
    : LteEarfcnTestCase(str, earfcn, f)
{
}

void
LteEarfcnUlTestCase::DoRun()
{
    double f = LteSpectrumValueHelper::GetUplinkCarrierFrequency(m_earfcn);
    NS_TEST_ASSERT_MSG_EQ_TOL(f, m_f, 0.0000001, "wrong frequency");
}

/**
 * @ingroup lte-test
 *
 * @brief Test suite for testing correct conversion of frequencies in
 * the downlink and the uplink, and general EARFCN frequencies.
 */
class LteEarfcnTestSuite : public TestSuite
{
  public:
    LteEarfcnTestSuite();
};

/**
 * @ingroup lte-test
 * Static variable for test initialization
 */
static LteEarfcnTestSuite g_lteEarfcnTestSuite;

LteEarfcnTestSuite::LteEarfcnTestSuite()
    : TestSuite("lte-earfcn", Type::UNIT)
{
    NS_LOG_FUNCTION(this);

    AddTestCase(new LteEarfcnDlTestCase("DL EARFCN=500", 500, 2160e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnDlTestCase("DL EARFCN=1000", 1000, 1970e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnDlTestCase("DL EARFCN=1301", 1301, 1815.1e6),
                TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnDlTestCase("DL EARFCN=7000", 7000, 0.0), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnDlTestCase("DL EARFCN=20000", 20000, 0.0), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnDlTestCase("DL EARFCN=50000", 50000, 0.0), TestCase::Duration::QUICK);

    AddTestCase(new LteEarfcnUlTestCase("UL EARFCN=18100", 18100, 1930e6),
                TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnUlTestCase("UL EARFCN=19000", 19000, 1890e6),
                TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnUlTestCase("UL EARFCN=19400", 19400, 1730e6),
                TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnUlTestCase("UL EARFCN=10", 10, 0.0), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnUlTestCase("UL EARFCN=1000", 1000, 0.0), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnUlTestCase("UL EARFCN=50000", 50000, 0.0), TestCase::Duration::QUICK);

    AddTestCase(new LteEarfcnTestCase("EARFCN=500", 500, 2160e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=1000", 1000, 1970e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=1301", 1301, 1815.1e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=8000", 8000, 0.0), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=50000", 50000, 0.0), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=18100", 18100, 1930e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=19000", 19000, 1890e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=19400", 19400, 1730e6), TestCase::Duration::QUICK);
    AddTestCase(new LteEarfcnTestCase("EARFCN=50000", 50000, 0.0), TestCase::Duration::QUICK);
}

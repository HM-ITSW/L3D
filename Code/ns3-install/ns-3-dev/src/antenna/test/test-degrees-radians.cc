/*
 * Copyright (c) 2011 CTTC
 *
 * SPDX-License-Identifier: GPL-2.0-only
 *
 * Author: Nicola Baldo <nbaldo@cttc.es>
 */

#include "ns3/antenna-model.h"
#include "ns3/log.h"
#include "ns3/test.h"

#include <cmath>
#include <iostream>
#include <sstream>
#include <string>

using namespace ns3;

/**
 * @ingroup tests
 *
 * @brief Test degree to radians conversion
 */
class DegreesToRadiansTestCase : public TestCase
{
  public:
    /**
     * Build the test name
     * @param a test param
     * @return the test name
     */
    static std::string BuildNameString(double a);
    /**
     * Constructor
     * @param a angle in degrees
     * @param b expected angle in radians
     */
    DegreesToRadiansTestCase(double a, double b);

  private:
    void DoRun() override;

    double m_a; //!< angle in degrees
    double m_b; //!< expected angle in radians
};

std::string
DegreesToRadiansTestCase::BuildNameString(double a)
{
    std::ostringstream oss;
    oss << "angle = " << a << " degrees";
    return oss.str();
}

DegreesToRadiansTestCase::DegreesToRadiansTestCase(double a, double b)
    : TestCase(BuildNameString(a)),
      m_a(a),
      m_b(b)
{
}

void
DegreesToRadiansTestCase::DoRun()
{
    NS_TEST_EXPECT_MSG_EQ_TOL(DegreesToRadians(m_a), m_b, 1e-10, "wrong conversion");
}

/**
 * @ingroup tests
 *
 * @brief Test radians to degree conversion
 */
class RadiansToDegreesTestCase : public TestCase
{
  public:
    /**
     * Build the test name
     * @param a test param
     * @return the test name
     */
    static std::string BuildNameString(double a);
    /**
     * Constructor
     * @param a angle in radians
     * @param b expected angle in degrees
     */
    RadiansToDegreesTestCase(double a, double b);

  private:
    void DoRun() override;

    double m_a; //!< angle in radians
    double m_b; //!< expected angle in degrees
};

std::string
RadiansToDegreesTestCase::BuildNameString(double a)
{
    std::ostringstream oss;
    oss << "angle = " << a << " degrees";
    return oss.str();
}

RadiansToDegreesTestCase::RadiansToDegreesTestCase(double a, double b)
    : TestCase(BuildNameString(a)),
      m_a(a),
      m_b(b)
{
}

void
RadiansToDegreesTestCase::DoRun()
{
    NS_TEST_EXPECT_MSG_EQ_TOL(RadiansToDegrees(m_a), m_b, 1e-10, "wrong conversion");
}

/**
 * @ingroup tests
 *
 * @brief TestSuite: degree to radians (and vice-versa) conversions
 */
class DegreesRadiansTestSuite : public TestSuite
{
  public:
    DegreesRadiansTestSuite();
};

DegreesRadiansTestSuite::DegreesRadiansTestSuite()
    : TestSuite("degrees-radians", Type::UNIT)
{
    AddTestCase(new DegreesToRadiansTestCase(0, 0), TestCase::Duration::QUICK);
    AddTestCase(new DegreesToRadiansTestCase(90, M_PI_2), TestCase::Duration::QUICK);
    AddTestCase(new DegreesToRadiansTestCase(180, M_PI), TestCase::Duration::QUICK);
    AddTestCase(new DegreesToRadiansTestCase(270, M_PI + M_PI_2), TestCase::Duration::QUICK);
    AddTestCase(new DegreesToRadiansTestCase(360, M_PI + M_PI), TestCase::Duration::QUICK);
    AddTestCase(new DegreesToRadiansTestCase(-90, -M_PI_2), TestCase::Duration::QUICK);
    AddTestCase(new DegreesToRadiansTestCase(810, 4.5 * M_PI), TestCase::Duration::QUICK);

    AddTestCase(new RadiansToDegreesTestCase(0, 0), TestCase::Duration::QUICK);
    AddTestCase(new RadiansToDegreesTestCase(M_PI_2, 90), TestCase::Duration::QUICK);
    AddTestCase(new RadiansToDegreesTestCase(M_PI, 180), TestCase::Duration::QUICK);
    AddTestCase(new RadiansToDegreesTestCase(M_PI + M_PI_2, 270), TestCase::Duration::QUICK);
    AddTestCase(new RadiansToDegreesTestCase(M_PI + M_PI, 360), TestCase::Duration::QUICK);
    AddTestCase(new RadiansToDegreesTestCase(-M_PI_2, -90), TestCase::Duration::QUICK);
    AddTestCase(new RadiansToDegreesTestCase(4.5 * M_PI, 810), TestCase::Duration::QUICK);
}

/// Static variable for test initialization
static DegreesRadiansTestSuite g_staticDegreesRadiansTestSuiteInstance;

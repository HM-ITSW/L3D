#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/mobility-module.h"
#include "ns3/lte-module.h"
#include "ns3/config-store.h"
#include "ns3/buildings-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/internet-module.h"
#include "ns3/applications-module.h"
#include "ns3/random-variable-stream.h"

#include <vector>
#include <list>
#include <fstream>
#include <cmath>
#include <iomanip>
#include <sstream>

// Include C++17 filesystem header
#include <filesystem>
namespace fs = std::filesystem;

using namespace ns3;

// Global variables for file base name and output folder
std::string baseFilename;
std::string g_configFolder;

std::list<Box> existingBuildings;

bool CheckOverlap (const Box & a, const Box & b)
{
  return (a.xMin <= b.xMax && a.xMax >= b.xMin) &&
         (a.yMin <= b.yMax && a.yMax >= b.yMin) &&
         (a.zMin <= b.zMax && a.zMax >= b.zMin);
}

bool CheckOverlap (const Box & newBuilding)
{
  for (const auto & existing : existingBuildings)
  {
    if (CheckOverlap (existing, newBuilding))
    {
      return true;  // Overlap detected
    }
  }
  return false;  // No overlap
}

void CreateRandomBuildings (uint32_t numBuildings, double xMin, double xMax, double yMin, double yMax, const std::string & baseFilename)
{
  Ptr<UniformRandomVariable> xRand = CreateObject<UniformRandomVariable> ();
  Ptr<UniformRandomVariable> yRand = CreateObject<UniformRandomVariable> ();
  Ptr<UniformRandomVariable> zRand = CreateObject<UniformRandomVariable> ();  // For random height

  uint32_t attemptLimit = 1000;  // Limit attempts to prevent infinite loop

  // Open the file for writing in the simulation results folder
  std::ofstream buildingFile (g_configFolder + "/" + baseFilename + "-buildings.csv");
  if (!buildingFile.is_open ())
  {
    std::cerr << "Failed to open buildings.csv for writing!" << std::endl;
    return;
  }

  // Write header to the file
  buildingFile << "Building_ID,X_Min,X_Max,Y_Min,Y_Max,Z_Min,Z_Max" << std::endl;

  for (uint32_t i = 0; i < numBuildings; ++i)
  {
    bool placed = false;
    uint32_t attempts = 0;

    while (!placed && attempts < attemptLimit)
    {
      double xSize = xRand->GetValue (20, 50);
      double ySize = yRand->GetValue (20, 50);
      double height = zRand->GetValue (30, 50);  // Random building height
      
      // Adjust the random range to ensure buildings are fully within bounds
      xRand->SetAttribute ("Min", DoubleValue (xMin));
      xRand->SetAttribute ("Max", DoubleValue (xMax - xSize));
      yRand->SetAttribute ("Min", DoubleValue (yMin));
      yRand->SetAttribute ("Max", DoubleValue (yMax - ySize));
      
      double x = xRand->GetValue ();
      double y = yRand->GetValue ();
      
      // Box dimensions with random height
      Box newBuildingBox (x, x + xSize, y, y + ySize, 0.0, height);

      if (!CheckOverlap (newBuildingBox))
      {
        Ptr<Building> building = CreateObject<Building> ();
        building->SetBoundaries (newBuildingBox);
        building->SetBuildingType (Building::Residential);
        building->SetExtWallsType (Building::ConcreteWithWindows);
        building->SetNFloors (1);

        existingBuildings.push_back (newBuildingBox);
        placed = true;

        // Log the building position to the file
        buildingFile << i << "," 
                     << newBuildingBox.xMin << "," 
                     << newBuildingBox.xMax << "," 
                     << newBuildingBox.yMin << "," 
                     << newBuildingBox.yMax << "," 
                     << newBuildingBox.zMin << "," 
                     << newBuildingBox.zMax << std::endl;
      }

      attempts++;
    }

    if (!placed)
    {
      std::cout << "Warning: Could not place building " << i << " after " << attemptLimit << " attempts." << std::endl;
    }
  }

  // Close the file
  buildingFile.close ();
}

void CreateEnbTopology (NodeContainer & enbNodes, const std::string & topologyType, double areaSize)
{
  uint32_t numEnbs;
  MobilityHelper enbMobility;
  enbMobility.SetMobilityModel ("ns3::ConstantPositionMobilityModel");
  Ptr<ListPositionAllocator> positionAlloc = CreateObject<ListPositionAllocator> ();

  double centerX = areaSize / 2;
  double centerY = areaSize / 2;
  double height = 100.0;  // eNB height
  double radius = areaSize / 3;  // Adjust this value to change the spread of eNBs

  if (topologyType == "star")
  {
    numEnbs = 7;
    positionAlloc->Add (Vector (centerX, centerY, height));  // Center eNB
    for (uint32_t i = 0; i < 6; ++i)
    {
      double angle = i * 2 * M_PI / 6;
      positionAlloc->Add (Vector (centerX + radius * cos (angle),
                                  centerY + radius * sin (angle),
                                  height));
    }
  }
  else if (topologyType == "circular")
  {
    numEnbs = 6;
    for (uint32_t i = 0; i < numEnbs; ++i)
    {
      double angle = i * 2 * M_PI / numEnbs;
      positionAlloc->Add (Vector (centerX + radius * cos (angle),
                                  centerY + radius * sin (angle),
                                  height));
    }
  }
  else if (topologyType == "triangular")
  {
    numEnbs = 3;
    for (uint32_t i = 0; i < numEnbs; ++i)
    {
      double angle = i * 2 * M_PI / numEnbs;
      positionAlloc->Add (Vector (centerX + radius * cos (angle),
                                  centerY + radius * sin (angle),
                                  height));
    }
  }
  else if (topologyType == "square")
  {
    numEnbs = 4;
    double offset = radius / sqrt (2);
    positionAlloc->Add (Vector (centerX - offset, centerY - offset, height));
    positionAlloc->Add (Vector (centerX + offset, centerY - offset, height));
    positionAlloc->Add (Vector (centerX - offset, centerY + offset, height));
    positionAlloc->Add (Vector (centerX + offset, centerY + offset, height));
  }
  else if (topologyType == "single")
  {
    numEnbs = 1;
    positionAlloc->Add (Vector (centerX, centerY, height));
  }
  else if (topologyType == "two")
  {
    numEnbs = 2;
    double xOffset = areaSize / 4;  // Place eNBs at 1/4 and 3/4 of the area width
    positionAlloc->Add (Vector (xOffset, centerY, height));  // Left eNB
    positionAlloc->Add (Vector (3 * xOffset, centerY, height));  // Right eNB
  }
  else
  {
    std::cerr << "Invalid topology type. Using default (single eNB)." << std::endl;
    numEnbs = 1;
    positionAlloc->Add (Vector (centerX, centerY, height));
  }

  enbNodes.Create (numEnbs);
  enbMobility.SetPositionAllocator (positionAlloc);
  enbMobility.Install (enbNodes);
}

void LogUePositions (NodeContainer ueNodes, NetDeviceContainer ueLteDevs, const std::string & baseFilename)
{
  std::ofstream outfile;
  outfile.open (g_configFolder + "/" + baseFilename + "-ue_positions.csv", std::ios_base::app);  // Open file in append mode

  // Write header if the file is empty
  if (outfile.tellp () == 0)
  {
    outfile << "Time (s),IMSI,X Position,Y Position,Z Position" << std::endl;
  }

  for (uint32_t i = 0; i < ueNodes.GetN (); ++i)
  {
    Ptr<Node> ueNode = ueNodes.Get (i);
    Ptr<MobilityModel> mobility = ueNode->GetObject<MobilityModel> ();
    Vector pos = mobility->GetPosition ();  // Get the position of the UE

    // Get the IMSI from the LteUeNetDevice
    Ptr<LteUeNetDevice> ueLteDevice = ueLteDevs.Get (i)->GetObject<LteUeNetDevice> ();
    uint64_t imsi = ueLteDevice->GetImsi ();  // Retrieve the IMSI

    // Set Z value to 1.5
    pos.z = 1.5;

    // Log time, IMSI, and positions to the file
    outfile << Simulator::Now ().GetSeconds () << "," 
            << imsi << "," 
            << pos.x << "," 
            << pos.y << "," 
            << pos.z << std::endl;
  }

  outfile.close ();  // Close the file
}

void LogEnbPositions (NodeContainer enbNodes, NetDeviceContainer enbLteDevs, const std::string & baseFilename)
{
  std::ofstream outfile;
  outfile.open (g_configFolder + "/" + baseFilename + "-enb_positions.csv", std::ios_base::app);

  // Write header if the file is empty
  if (outfile.tellp () == 0)
  {
    outfile << "Cell ID,X Position,Y Position,Z Position" << std::endl;
  }

  for (uint32_t i = 0; i < enbNodes.GetN (); ++i)
  {
    Ptr<Node> enbNode = enbNodes.Get (i);
    Ptr<LteEnbNetDevice> enbDevice = enbLteDevs.Get (i)->GetObject<LteEnbNetDevice> ();
    uint16_t cellId = enbDevice->GetCellId ();  // Get the Cell ID of the eNB

    Ptr<MobilityModel> mobility = enbNode->GetObject<MobilityModel> ();
    Vector pos = mobility->GetPosition ();  // Get the position of the eNB

    // Log the Cell ID and position into the CSV file
    outfile << cellId << "," << pos.x << "," << pos.y << "," << pos.z << std::endl;
  }

  outfile.close ();
}

void ReportUeMeasurements (uint16_t rnti, uint16_t cellId, double rsrp, double rsrq, bool servingCell, uint8_t componentCarrierId, const std::string & baseFilename)
{
  std::ofstream outfile;
  outfile.open (g_configFolder + "/" + baseFilename + "-ue_measurements.csv", std::ios_base::app);  // Open file in append mode

  // Write the header if the file is empty
  if (outfile.tellp () == 0)
  {
    outfile << "Time (s),RNTI (for serving),Connection Type,Cell ID,RSRP (dBm),RSRQ (dB)" << std::endl;
  }

  std::string connectionType = servingCell ? "serving" : "neighbor";

  // For serving cells, we include RNTI; for neighbors, we skip RNTI
  if (servingCell)
  {
    outfile << Simulator::Now ().GetSeconds () << "," << rnti << "," << connectionType << "," 
            << cellId << "," << rsrp << "," << (std::isnan (rsrq) ? "nan" : std::to_string (rsrq)) << std::endl;
  }
  else
  {
    // For neighboring cells, we do not log RNTI
    outfile << Simulator::Now ().GetSeconds () << ",," << connectionType << "," 
            << cellId << "," << rsrp << "," << (std::isnan (rsrq) ? "nan" : std::to_string (rsrq)) << std::endl;
  }

  outfile.close ();
}

// Wrapper function declaration and definition for ReportUeMeasurements
void ReportUeMeasurementsWrapper (std::string baseFilename, uint16_t rnti, uint16_t cellId, double rsrp, double rsrq, bool servingCell, uint8_t componentCarrierId);
void ReportUeMeasurementsWrapper (std::string baseFilename, uint16_t rnti, uint16_t cellId, double rsrp, double rsrq, bool servingCell, uint8_t componentCarrierId)
{
  ReportUeMeasurements (rnti, cellId, rsrp, rsrq, servingCell, componentCarrierId, baseFilename);
}

/**
 * UE Connection established notification.
 *
 * \param context The context.
 * \param imsi The IMSI of the connected terminal.
 * \param cellid The Cell ID.
 * \param rnti The RNTI.
 */
void
NotifyConnectionEstablishedUe (std::string context, uint64_t imsi, uint16_t cellid, uint16_t rnti)
{
  std::cout << Simulator::Now ().As (Time::S) << " " << context << " UE IMSI " << imsi
            << ": connected to CellId " << cellid << " with RNTI " << rnti << std::endl;
}

/**
 * eNB Connection established notification.
 *
 * \param context The context.
 * \param imsi The IMSI of the connected terminal.
 * \param cellid The Cell ID.
 * \param rnti The RNTI.
 */
void NotifyConnectionEstablishedEnb (std::string context, uint64_t imsi, uint16_t cellid, uint16_t rnti)
{
  std::cout << Simulator::Now ().As (Time::S) << " " << context
            << " eNB CellId " << cellid
            << ": successful connection of UE with IMSI " << imsi
            << " RNTI " << rnti << std::endl;

  // Log connection establishment to file
  std::ofstream outfile;
  outfile.open (g_configFolder + "/" + baseFilename + "-handover_report.csv", std::ios_base::app);

  // Write the header if the file is empty
  if (outfile.tellp () == 0)
  {
    outfile << "Time (s),IMSI,RNTI,Cell ID" << std::endl;
  }

  // Round the time to one decimal place
  double roundedTime = std::floor (Simulator::Now ().GetSeconds () * 10.0) / 10.0;

  // Write the connection establishment details
  outfile << roundedTime << "," << imsi << "," << rnti << "," << cellid << std::endl;

  outfile.close ();
}

void LogUeEnbConnections (NodeContainer ueNodes, const std::string & baseFilename)
{
  std::ofstream outfile;
  outfile.open (g_configFolder + "/" + baseFilename + "-ue_enb_connections.csv", std::ios_base::app);

  // Write the header only if the file is empty
  if (outfile.tellp () == 0)
  {
    outfile << "Time (s),IMSI,RNTI,Cell ID" << std::endl;
  }

  for (uint32_t i = 0; i < ueNodes.GetN (); ++i)
  {
    Ptr<Node> ueNode = ueNodes.Get (i);
    Ptr<LteUeNetDevice> ueDevice = ueNode->GetDevice (0)->GetObject<LteUeNetDevice> ();

    uint64_t imsi = ueDevice->GetImsi ();                // Get UE IMSI (Unique ID)
    uint16_t rnti = ueDevice->GetRrc ()->GetRnti ();        // Get the RNTI of the UE
    uint16_t cellId = ueDevice->GetRrc ()->GetCellId ();    // Get the Cell ID of the connected eNB

    // Log the data into the file
    outfile << Simulator::Now ().GetSeconds () << "," << imsi << "," << rnti << "," << cellId << std::endl;
  }

  outfile.close ();
}

int main (int argc, char *argv[])
{
  std::string topologyType = "single";  // Default topology
  uint16_t numUeNodes = 40;
  double movingUserFraction = 0.8;
  uint16_t numBearersPerUe = 2;
  Ipv4Address remoteHostAddr;
  double simulationTime = 1.2;
  double areaSize = 1000.0;  // Default area size
  double nbuildings = 10;
  bool rem = false;
  bool epc = false;

  // Set the random seed and run number
  RngSeedManager::SetSeed (1);
  RngSeedManager::SetRun (1);

  CommandLine cmd;
  cmd.AddValue ("topology", "eNB topology type (star, circular, triangular, square, single)", topologyType);
  cmd.AddValue ("areaSize", "Size of the simulation area", areaSize);
  cmd.AddValue ("nbuildings", "Number of buildings", nbuildings);
  cmd.AddValue ("numUeNodes", "Number of users", numUeNodes);
  cmd.AddValue ("movingUserFraction", "Fraction of users that are moving (0.0 to 1.0)", movingUserFraction);
  cmd.AddValue ("simulationTime", "Simulation time", simulationTime);
  cmd.AddValue ("rem", "Generate REM", rem);
  cmd.AddValue ("epc", "Enable EPC", epc);
  cmd.Parse (argc, argv);

  std::ostringstream timeStr;
  timeStr << std::fixed << std::setprecision (1) << simulationTime;

  std::ostringstream fractionStr;
  fractionStr << std::fixed << std::setprecision (1) << movingUserFraction;

  std::ostringstream areaStr;
  areaStr << std::fixed << std::setprecision (1) << areaSize;

  // Create a base filename which is also used as the name of the configuration folder
  baseFilename = topologyType + "-U" + std::to_string (numUeNodes) + 
                 "-A" + areaStr.str () +
                 "-F" + fractionStr.str () +
                 "-B" + std::to_string (static_cast<int> (nbuildings)) + 
                 "-T" + timeStr.str ();

  // Create the simulation_results/configFolder folder
  g_configFolder = "simulation_results/" + baseFilename;
  fs::create_directories (g_configFolder);

  // Enable general LTE logging (uncomment if needed)
  // LogComponentEnable("LteHelper", LOG_LEVEL_INFO);
  // LogComponentEnable("EpcHelper", LOG_LEVEL_INFO);
  // LogComponentEnable("EpcEnbApplication", LOG_LEVEL_INFO);
  // LogComponentEnable("EpcMmeApplication", LOG_LEVEL_INFO);
  // LogComponentEnable("EpcPgwApplication", LOG_LEVEL_INFO);
  // LogComponentEnable("LteEnbRrc", LOG_LEVEL_INFO);

  // Create LTE and EPC helpers
  Ptr<LteHelper> lteHelper = CreateObject<LteHelper> ();
  Ptr<PointToPointEpcHelper> epcHelper = CreateObject<PointToPointEpcHelper> ();
  lteHelper->SetEpcHelper (epcHelper);

  // Set pathloss model
  lteHelper->SetEnbAntennaModelType ("ns3::IsotropicAntennaModel");
  lteHelper->SetAttribute ("PathlossModel", StringValue ("ns3::HybridBuildingsPropagationLossModel"));
  lteHelper->SetPathlossModelAttribute ("ShadowSigmaExtWalls", DoubleValue (0));
  lteHelper->SetPathlossModelAttribute ("ShadowSigmaOutdoor", DoubleValue (1));
  lteHelper->SetPathlossModelAttribute ("ShadowSigmaIndoor", DoubleValue (1.5));
  lteHelper->SetPathlossModelAttribute ("Los2NlosThr", DoubleValue (1e6));

  // eNB transmit power
  Config::SetDefault ("ns3::LteEnbPhy::TxPower", DoubleValue (30));

  // Create a single RemoteHost
  NodeContainer remoteHostContainer;
  remoteHostContainer.Create (1);
  Ptr<Node> remoteHost = remoteHostContainer.Get (0);
  InternetStackHelper internet;
  internet.Install (remoteHostContainer);

  // Create the Internet link
  PointToPointHelper p2ph;
  p2ph.SetDeviceAttribute ("DataRate", DataRateValue (DataRate ("100Gb/s")));
  p2ph.SetDeviceAttribute ("Mtu", UintegerValue (1500));
  p2ph.SetChannelAttribute ("Delay", TimeValue (Seconds (0.010)));
  NetDeviceContainer internetDevices = p2ph.Install (epcHelper->GetPgwNode (), remoteHost);
  Ipv4AddressHelper ipv4h;
  ipv4h.SetBase ("1.0.0.0", "255.0.0.0");
  Ipv4InterfaceContainer internetIpIfaces = ipv4h.Assign (internetDevices);

  Ipv4StaticRoutingHelper ipv4RoutingHelper;
  Ptr<Ipv4StaticRouting> remoteHostStaticRouting = ipv4RoutingHelper.GetStaticRouting (remoteHost->GetObject<Ipv4> ());
  remoteHostStaticRouting->AddNetworkRouteTo (Ipv4Address ("7.0.0.0"), Ipv4Mask ("255.0.0.0"), 1);
  remoteHostAddr = internetIpIfaces.GetAddress (1);

  // Create eNBs based on the selected topology
  NodeContainer enbNodes;
  CreateEnbTopology (enbNodes, topologyType, areaSize);

  // Create UE nodes
  NodeContainer ueNodes;
  ueNodes.Create (numUeNodes);

  // Calculate the number of moving and static UEs
  uint16_t numMovingUes = static_cast<uint16_t> (numUeNodes * movingUserFraction);

  // Create separate node containers for moving and static UEs
  NodeContainer movingUeNodes;
  NodeContainer staticUeNodes;

  for (uint16_t i = 0; i < numMovingUes; ++i)
  {
    movingUeNodes.Add (ueNodes.Get (i));
  }
  for (uint16_t i = numMovingUes; i < numUeNodes; ++i)
  {
    staticUeNodes.Add (ueNodes.Get (i));
  }

  // Set up random position allocator for UEs
  Ptr<RandomBoxPositionAllocator> randomPositionAlloc = CreateObject<RandomBoxPositionAllocator> ();
  randomPositionAlloc->SetAttribute ("X", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=1000.0]"));
  randomPositionAlloc->SetAttribute ("Y", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=1000.0]"));
  randomPositionAlloc->SetAttribute ("Z", StringValue ("ns3::UniformRandomVariable[Min=1.5|Max=1.5]"));

  // Set up mobility for static UEs
  MobilityHelper staticUeMobility;
  staticUeMobility.SetMobilityModel ("ns3::ConstantPositionMobilityModel");
  Ptr<RandomBoxPositionAllocator> staticPositionAlloc = CreateObject<RandomBoxPositionAllocator> ();
  staticPositionAlloc->SetAttribute ("X", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=" + std::to_string (areaSize) + "]"));
  staticPositionAlloc->SetAttribute ("Y", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=" + std::to_string (areaSize) + "]"));
  staticPositionAlloc->SetAttribute ("Z", StringValue ("ns3::ConstantRandomVariable[Constant=1.5]"));
  staticUeMobility.SetPositionAllocator (staticPositionAlloc);
  staticUeMobility.Install (staticUeNodes);

  // Set up mobility for moving UEs
  MobilityHelper movingUeMobility;
  movingUeMobility.SetMobilityModel ("ns3::GaussMarkovMobilityModel",
                                     "Bounds", BoxValue (Box (0, areaSize, 0, areaSize, 1.5, 1.5)),
                                     "TimeStep", TimeValue (MilliSeconds (100)),
                                     "Alpha", DoubleValue (0.8),
                                     "MeanVelocity", StringValue ("ns3::UniformRandomVariable[Min=1.0|Max=5.0]"),
                                     "MeanDirection", StringValue ("ns3::UniformRandomVariable[Min=0|Max=6.283185307]"),
                                     "MeanPitch", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=0.0]"));
  Ptr<RandomBoxPositionAllocator> movingPositionAlloc = CreateObject<RandomBoxPositionAllocator> ();
  movingPositionAlloc->SetAttribute ("X", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=" + std::to_string (areaSize) + "]"));
  movingPositionAlloc->SetAttribute ("Y", StringValue ("ns3::UniformRandomVariable[Min=0.0|Max=" + std::to_string (areaSize) + "]"));
  movingPositionAlloc->SetAttribute ("Z", StringValue ("ns3::ConstantRandomVariable[Constant=1.5]"));
  movingUeMobility.SetPositionAllocator (movingPositionAlloc);
  movingUeMobility.Install (movingUeNodes);

  // Create multiple buildings without overlap and fully within bounds
  CreateRandomBuildings (nbuildings, 0.0, areaSize, 0.0, areaSize, baseFilename);

  // Install building information for mobility
  BuildingsHelper::Install (enbNodes);
  BuildingsHelper::Install (ueNodes);

  // Install LTE devices
  NetDeviceContainer enbDevs;
  enbDevs = lteHelper->InstallEnbDevice (enbNodes);
  NetDeviceContainer ueDevs;
  ueDevs = lteHelper->InstallUeDevice (ueNodes);

  LogUePositions (ueNodes, ueDevs, baseFilename);
  LogEnbPositions (enbNodes, enbDevs, baseFilename);

  lteHelper->AddX2Interface (enbNodes);

  for (uint32_t i = 0; i < enbDevs.GetN (); ++i)
  {
    Ptr<LteEnbNetDevice> enbDevice = DynamicCast<LteEnbNetDevice> (enbDevs.Get (i));
    uint16_t dlEarfcn = 100;
    uint16_t ulEarfcn = 18100 + i * 50;
    Config::Set ("/NodeList/" + std::to_string (enbDevice->GetNode ()->GetId ()) + "/DeviceList/0/LteEnbPhy/DlEarfcn", UintegerValue (dlEarfcn));
    Config::Set ("/NodeList/" + std::to_string (enbDevice->GetNode ()->GetId ()) + "/DeviceList/0/LteEnbPhy/UlEarfcn", UintegerValue (ulEarfcn));
  }

  // Install the IP stack on the UEs
  internet.Install (ueNodes);
  Ipv4InterfaceContainer ueIpIfaces;
  ueIpIfaces = epcHelper->AssignUeIpv4Address (NetDeviceContainer (ueDevs));

  // Attach UE to eNB
  lteHelper->Attach (ueDevs);
  lteHelper->SetHandoverAlgorithmType ("ns3::A2A4RsrqHandoverAlgorithm");
  lteHelper->SetHandoverAlgorithmAttribute ("ServingCellThreshold", UintegerValue (30));
  lteHelper->SetHandoverAlgorithmAttribute ("NeighbourCellOffset", UintegerValue (1));

  lteHelper->SetSpectrumChannelType ("ns3::MultiModelSpectrumChannel");

  if (epc)
  {
    uint16_t dlPort = 10000;
    uint16_t ulPort = 20000;

    Ptr<UniformRandomVariable> startTimeSeconds = CreateObject<UniformRandomVariable> ();
    startTimeSeconds->SetAttribute ("Min", DoubleValue (0.05));
    startTimeSeconds->SetAttribute ("Max", DoubleValue (0.06));

    for (uint32_t u = 0; u < numUeNodes; ++u)
    {
      Ptr<Node> ue = ueNodes.Get (u);
      Ptr<Ipv4StaticRouting> ueStaticRouting = ipv4RoutingHelper.GetStaticRouting (ue->GetObject<Ipv4> ());
      ueStaticRouting->SetDefaultRoute (epcHelper->GetUeDefaultGatewayAddress (), 1);

      for (uint32_t b = 0; b < numBearersPerUe; ++b)
      {
        ApplicationContainer clientApps;
        ApplicationContainer serverApps;
        Ptr<EpcTft> tft = Create<EpcTft> ();

        ++dlPort;
        UdpClientHelper dlClientHelper (ueIpIfaces.GetAddress (u), dlPort);
        clientApps.Add (dlClientHelper.Install (remoteHost));
        PacketSinkHelper dlPacketSinkHelper ("ns3::UdpSocketFactory",
                                               InetSocketAddress (Ipv4Address::GetAny (), dlPort));
        serverApps.Add (dlPacketSinkHelper.Install (ue));

        EpcTft::PacketFilter dlpf;
        dlpf.localPortStart = dlPort;
        dlpf.localPortEnd = dlPort;
        tft->Add (dlpf);

        ++ulPort;
        UdpClientHelper ulClientHelper (remoteHostAddr, ulPort);
        clientApps.Add (ulClientHelper.Install (ue));
        PacketSinkHelper ulPacketSinkHelper ("ns3::UdpSocketFactory",
                                               InetSocketAddress (Ipv4Address::GetAny (), ulPort));
        serverApps.Add (ulPacketSinkHelper.Install (remoteHost));

        EpcTft::PacketFilter ulpf;
        ulpf.remotePortStart = ulPort;
        ulpf.remotePortEnd = ulPort;
        tft->Add (ulpf);

        EpsBearer bearer (EpsBearer::GBR_CONV_VOICE);
        lteHelper->ActivateDedicatedEpsBearer (ueDevs.Get (u), bearer, tft);

        Time startTime = Seconds (startTimeSeconds->GetValue ());
        serverApps.Start (startTime);
        clientApps.Start (startTime);
        clientApps.Stop (Seconds (simulationTime));
      }
    }
  }

  Ptr<RadioEnvironmentMapHelper> remHelper = CreateObject<RadioEnvironmentMapHelper> ();
  if (rem)
  {
    // Set up REM parameters, with the output file in the config folder
    remHelper->SetAttribute ("Channel", PointerValue (lteHelper->GetDownlinkSpectrumChannel ()));
    remHelper->SetAttribute ("OutputFile", StringValue (g_configFolder + "/" + baseFilename + "-rem-example"));
    remHelper->SetAttribute ("XMin", DoubleValue (0.0));
    remHelper->SetAttribute ("XMax", DoubleValue (areaSize));
    remHelper->SetAttribute ("YMin", DoubleValue (0.0));
    remHelper->SetAttribute ("YMax", DoubleValue (areaSize));
    remHelper->SetAttribute ("XRes", UintegerValue (500));
    remHelper->SetAttribute ("YRes", UintegerValue (500));
    remHelper->SetAttribute ("Z", DoubleValue (1.5));
    remHelper->Install ();
  }

  double loggingInterval = 0.1;  // Log every 0.1 second
  for (double t = loggingInterval; t <= simulationTime; t += loggingInterval)
  {
    Simulator::Schedule (Seconds (t), &LogUePositions, ueNodes, ueDevs, baseFilename);
  }

  // Schedule printing of UE to eNB connections every 0.2 seconds
  double printInterval = 0.2;
  for (double t = 0.4; t <= simulationTime; t += printInterval)
  {
    Simulator::Schedule (Seconds (t), &LogUeEnbConnections, ueNodes, baseFilename);
  }

  // Connect trace sinks for RRC connection establishment and handover notification
  Config::ConnectWithoutContext ("/NodeList/*/DeviceList/*/ComponentCarrierMapUe/*/LteUePhy/ReportUeMeasurements",
                                   MakeBoundCallback (&ReportUeMeasurementsWrapper, baseFilename));
  Config::Connect ("/NodeList/*/DeviceList/*/LteEnbRrc/ConnectionEstablished",
                   MakeCallback (&NotifyConnectionEstablishedEnb));

  // Run the simulation
  Simulator::Stop (Seconds (simulationTime));
  Simulator::Run ();

  Simulator::Destroy ();
  return 0;
}
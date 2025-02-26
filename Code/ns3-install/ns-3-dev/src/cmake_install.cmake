# Install script for directory: /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "default")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/antenna/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/aodv/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/applications/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/brite/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/buildings/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/click/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/config-store/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/core/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma-layout/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsr/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/energy/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/fd-net-device/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/flow-monitor/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/internet/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/internet-apps/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/lr-wpan/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/lte/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/mesh/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/mobility/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/netanim/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/network/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/nix-vector-routing/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/olsr/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/openflow/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/point-to-point/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/point-to-point-layout/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/sixlowpan/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/spectrum/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/stats/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/tap-bridge/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/topology-read/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/traffic-control/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/uan/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/virtual-net-device/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/wifi/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/wimax/cmake_install.cmake")
  include("/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/zigbee/cmake_install.cmake")

endif()


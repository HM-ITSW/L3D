# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev

# Utility rule file for uninstall_raw-sock-creator.

# Include any custom commands dependencies for this target.
include src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/compiler_depend.make

# Include the progress variables for this target.
include src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/progress.make

src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/fd-net-device && rm /usr/local/libexec/ns3/ns3-dev-raw-sock-creator-default

uninstall_raw-sock-creator: src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator
uninstall_raw-sock-creator: src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/build.make
.PHONY : uninstall_raw-sock-creator

# Rule to build all files generated by this target.
src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/build: uninstall_raw-sock-creator
.PHONY : src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/build

src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/clean:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/fd-net-device && $(CMAKE_COMMAND) -P CMakeFiles/uninstall_raw-sock-creator.dir/cmake_clean.cmake
.PHONY : src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/clean

src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/depend:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/fd-net-device /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/fd-net-device /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/fd-net-device/CMakeFiles/uninstall_raw-sock-creator.dir/depend


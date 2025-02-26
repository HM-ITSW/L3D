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

# Include any dependencies generated for this target.
include src/bridge/CMakeFiles/bridge.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/bridge/CMakeFiles/bridge.dir/compiler_depend.make

# Include the progress variables for this target.
include src/bridge/CMakeFiles/bridge.dir/progress.make

# Include the compile flags for this target's objects.
include src/bridge/CMakeFiles/bridge.dir/flags.make

src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.o: src/bridge/CMakeFiles/bridge.dir/flags.make
src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.o: src/bridge/helper/bridge-helper.cc
src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.o: src/bridge/CMakeFiles/bridge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.o -MF CMakeFiles/bridge.dir/helper/bridge-helper.cc.o.d -o CMakeFiles/bridge.dir/helper/bridge-helper.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/helper/bridge-helper.cc

src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/bridge.dir/helper/bridge-helper.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/helper/bridge-helper.cc > CMakeFiles/bridge.dir/helper/bridge-helper.cc.i

src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/bridge.dir/helper/bridge-helper.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/helper/bridge-helper.cc -o CMakeFiles/bridge.dir/helper/bridge-helper.cc.s

src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.o: src/bridge/CMakeFiles/bridge.dir/flags.make
src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.o: src/bridge/model/bridge-channel.cc
src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.o: src/bridge/CMakeFiles/bridge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.o -MF CMakeFiles/bridge.dir/model/bridge-channel.cc.o.d -o CMakeFiles/bridge.dir/model/bridge-channel.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/model/bridge-channel.cc

src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/bridge.dir/model/bridge-channel.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/model/bridge-channel.cc > CMakeFiles/bridge.dir/model/bridge-channel.cc.i

src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/bridge.dir/model/bridge-channel.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/model/bridge-channel.cc -o CMakeFiles/bridge.dir/model/bridge-channel.cc.s

src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.o: src/bridge/CMakeFiles/bridge.dir/flags.make
src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.o: src/bridge/model/bridge-net-device.cc
src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.o: src/bridge/CMakeFiles/bridge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.o -MF CMakeFiles/bridge.dir/model/bridge-net-device.cc.o.d -o CMakeFiles/bridge.dir/model/bridge-net-device.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/model/bridge-net-device.cc

src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/bridge.dir/model/bridge-net-device.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/model/bridge-net-device.cc > CMakeFiles/bridge.dir/model/bridge-net-device.cc.i

src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/bridge.dir/model/bridge-net-device.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/model/bridge-net-device.cc -o CMakeFiles/bridge.dir/model/bridge-net-device.cc.s

# Object files for target bridge
bridge_OBJECTS = \
"CMakeFiles/bridge.dir/helper/bridge-helper.cc.o" \
"CMakeFiles/bridge.dir/model/bridge-channel.cc.o" \
"CMakeFiles/bridge.dir/model/bridge-net-device.cc.o"

# External object files for target bridge
bridge_EXTERNAL_OBJECTS =

build/lib/libns3-dev-bridge-default.so: src/bridge/CMakeFiles/bridge.dir/helper/bridge-helper.cc.o
build/lib/libns3-dev-bridge-default.so: src/bridge/CMakeFiles/bridge.dir/model/bridge-channel.cc.o
build/lib/libns3-dev-bridge-default.so: src/bridge/CMakeFiles/bridge.dir/model/bridge-net-device.cc.o
build/lib/libns3-dev-bridge-default.so: src/bridge/CMakeFiles/bridge.dir/build.make
build/lib/libns3-dev-bridge-default.so: /usr/lib/x86_64-linux-gnu/libgsl.so
build/lib/libns3-dev-bridge-default.so: /usr/lib/x86_64-linux-gnu/libgslcblas.so
build/lib/libns3-dev-bridge-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
build/lib/libns3-dev-bridge-default.so: src/bridge/CMakeFiles/bridge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../build/lib/libns3-dev-bridge-default.so"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bridge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/bridge/CMakeFiles/bridge.dir/build: build/lib/libns3-dev-bridge-default.so
.PHONY : src/bridge/CMakeFiles/bridge.dir/build

src/bridge/CMakeFiles/bridge.dir/clean:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge && $(CMAKE_COMMAND) -P CMakeFiles/bridge.dir/cmake_clean.cmake
.PHONY : src/bridge/CMakeFiles/bridge.dir/clean

src/bridge/CMakeFiles/bridge.dir/depend:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/bridge/CMakeFiles/bridge.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/bridge/CMakeFiles/bridge.dir/depend


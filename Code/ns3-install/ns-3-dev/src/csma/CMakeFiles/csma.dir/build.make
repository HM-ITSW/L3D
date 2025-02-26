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
include src/csma/CMakeFiles/csma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/csma/CMakeFiles/csma.dir/compiler_depend.make

# Include the progress variables for this target.
include src/csma/CMakeFiles/csma.dir/progress.make

# Include the compile flags for this target's objects.
include src/csma/CMakeFiles/csma.dir/flags.make

src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.o: src/csma/CMakeFiles/csma.dir/flags.make
src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.o: src/csma/helper/csma-helper.cc
src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.o: src/csma/CMakeFiles/csma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.o -MF CMakeFiles/csma.dir/helper/csma-helper.cc.o.d -o CMakeFiles/csma.dir/helper/csma-helper.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/helper/csma-helper.cc

src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/csma.dir/helper/csma-helper.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/helper/csma-helper.cc > CMakeFiles/csma.dir/helper/csma-helper.cc.i

src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/csma.dir/helper/csma-helper.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/helper/csma-helper.cc -o CMakeFiles/csma.dir/helper/csma-helper.cc.s

src/csma/CMakeFiles/csma.dir/model/backoff.cc.o: src/csma/CMakeFiles/csma.dir/flags.make
src/csma/CMakeFiles/csma.dir/model/backoff.cc.o: src/csma/model/backoff.cc
src/csma/CMakeFiles/csma.dir/model/backoff.cc.o: src/csma/CMakeFiles/csma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/csma/CMakeFiles/csma.dir/model/backoff.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/csma/CMakeFiles/csma.dir/model/backoff.cc.o -MF CMakeFiles/csma.dir/model/backoff.cc.o.d -o CMakeFiles/csma.dir/model/backoff.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/backoff.cc

src/csma/CMakeFiles/csma.dir/model/backoff.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/csma.dir/model/backoff.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/backoff.cc > CMakeFiles/csma.dir/model/backoff.cc.i

src/csma/CMakeFiles/csma.dir/model/backoff.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/csma.dir/model/backoff.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/backoff.cc -o CMakeFiles/csma.dir/model/backoff.cc.s

src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.o: src/csma/CMakeFiles/csma.dir/flags.make
src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.o: src/csma/model/csma-channel.cc
src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.o: src/csma/CMakeFiles/csma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.o -MF CMakeFiles/csma.dir/model/csma-channel.cc.o.d -o CMakeFiles/csma.dir/model/csma-channel.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/csma-channel.cc

src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/csma.dir/model/csma-channel.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/csma-channel.cc > CMakeFiles/csma.dir/model/csma-channel.cc.i

src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/csma.dir/model/csma-channel.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/csma-channel.cc -o CMakeFiles/csma.dir/model/csma-channel.cc.s

src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.o: src/csma/CMakeFiles/csma.dir/flags.make
src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.o: src/csma/model/csma-net-device.cc
src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.o: src/csma/CMakeFiles/csma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.o -MF CMakeFiles/csma.dir/model/csma-net-device.cc.o.d -o CMakeFiles/csma.dir/model/csma-net-device.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/csma-net-device.cc

src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/csma.dir/model/csma-net-device.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/csma-net-device.cc > CMakeFiles/csma.dir/model/csma-net-device.cc.i

src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/csma.dir/model/csma-net-device.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/model/csma-net-device.cc -o CMakeFiles/csma.dir/model/csma-net-device.cc.s

# Object files for target csma
csma_OBJECTS = \
"CMakeFiles/csma.dir/helper/csma-helper.cc.o" \
"CMakeFiles/csma.dir/model/backoff.cc.o" \
"CMakeFiles/csma.dir/model/csma-channel.cc.o" \
"CMakeFiles/csma.dir/model/csma-net-device.cc.o"

# External object files for target csma
csma_EXTERNAL_OBJECTS =

build/lib/libns3-dev-csma-default.so: src/csma/CMakeFiles/csma.dir/helper/csma-helper.cc.o
build/lib/libns3-dev-csma-default.so: src/csma/CMakeFiles/csma.dir/model/backoff.cc.o
build/lib/libns3-dev-csma-default.so: src/csma/CMakeFiles/csma.dir/model/csma-channel.cc.o
build/lib/libns3-dev-csma-default.so: src/csma/CMakeFiles/csma.dir/model/csma-net-device.cc.o
build/lib/libns3-dev-csma-default.so: src/csma/CMakeFiles/csma.dir/build.make
build/lib/libns3-dev-csma-default.so: /usr/lib/x86_64-linux-gnu/libgsl.so
build/lib/libns3-dev-csma-default.so: /usr/lib/x86_64-linux-gnu/libgslcblas.so
build/lib/libns3-dev-csma-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
build/lib/libns3-dev-csma-default.so: src/csma/CMakeFiles/csma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../build/lib/libns3-dev-csma-default.so"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/csma/CMakeFiles/csma.dir/build: build/lib/libns3-dev-csma-default.so
.PHONY : src/csma/CMakeFiles/csma.dir/build

src/csma/CMakeFiles/csma.dir/clean:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma && $(CMAKE_COMMAND) -P CMakeFiles/csma.dir/cmake_clean.cmake
.PHONY : src/csma/CMakeFiles/csma.dir/clean

src/csma/CMakeFiles/csma.dir/depend:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/csma/CMakeFiles/csma.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/csma/CMakeFiles/csma.dir/depend


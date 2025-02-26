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
include src/dsdv/CMakeFiles/dsdv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/dsdv/CMakeFiles/dsdv.dir/compiler_depend.make

# Include the progress variables for this target.
include src/dsdv/CMakeFiles/dsdv.dir/progress.make

# Include the compile flags for this target's objects.
include src/dsdv/CMakeFiles/dsdv.dir/flags.make

src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o: src/dsdv/CMakeFiles/dsdv.dir/flags.make
src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o: src/dsdv/helper/dsdv-helper.cc
src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o: src/dsdv/CMakeFiles/dsdv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o -MF CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o.d -o CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/helper/dsdv-helper.cc

src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/helper/dsdv-helper.cc > CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.i

src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/helper/dsdv-helper.cc -o CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.s

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o: src/dsdv/CMakeFiles/dsdv.dir/flags.make
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o: src/dsdv/model/dsdv-packet-queue.cc
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o: src/dsdv/CMakeFiles/dsdv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o -MF CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o.d -o CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-packet-queue.cc

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-packet-queue.cc > CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.i

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-packet-queue.cc -o CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.s

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o: src/dsdv/CMakeFiles/dsdv.dir/flags.make
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o: src/dsdv/model/dsdv-packet.cc
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o: src/dsdv/CMakeFiles/dsdv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o -MF CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o.d -o CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-packet.cc

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsdv.dir/model/dsdv-packet.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-packet.cc > CMakeFiles/dsdv.dir/model/dsdv-packet.cc.i

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsdv.dir/model/dsdv-packet.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-packet.cc -o CMakeFiles/dsdv.dir/model/dsdv-packet.cc.s

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o: src/dsdv/CMakeFiles/dsdv.dir/flags.make
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o: src/dsdv/model/dsdv-routing-protocol.cc
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o: src/dsdv/CMakeFiles/dsdv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o -MF CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o.d -o CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-routing-protocol.cc

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-routing-protocol.cc > CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.i

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-routing-protocol.cc -o CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.s

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o: src/dsdv/CMakeFiles/dsdv.dir/flags.make
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o: src/dsdv/model/dsdv-rtable.cc
src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o: src/dsdv/CMakeFiles/dsdv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o -MF CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o.d -o CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-rtable.cc

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-rtable.cc > CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.i

src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/model/dsdv-rtable.cc -o CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.s

# Object files for target dsdv
dsdv_OBJECTS = \
"CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o" \
"CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o" \
"CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o" \
"CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o" \
"CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o"

# External object files for target dsdv
dsdv_EXTERNAL_OBJECTS =

build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/helper/dsdv-helper.cc.o
build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet-queue.cc.o
build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-packet.cc.o
build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-routing-protocol.cc.o
build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/model/dsdv-rtable.cc.o
build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/build.make
build/lib/libns3-dev-dsdv-default.so: /usr/lib/x86_64-linux-gnu/libgsl.so
build/lib/libns3-dev-dsdv-default.so: /usr/lib/x86_64-linux-gnu/libgslcblas.so
build/lib/libns3-dev-dsdv-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
build/lib/libns3-dev-dsdv-default.so: src/dsdv/CMakeFiles/dsdv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library ../../build/lib/libns3-dev-dsdv-default.so"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dsdv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dsdv/CMakeFiles/dsdv.dir/build: build/lib/libns3-dev-dsdv-default.so
.PHONY : src/dsdv/CMakeFiles/dsdv.dir/build

src/dsdv/CMakeFiles/dsdv.dir/clean:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv && $(CMAKE_COMMAND) -P CMakeFiles/dsdv.dir/cmake_clean.cmake
.PHONY : src/dsdv/CMakeFiles/dsdv.dir/clean

src/dsdv/CMakeFiles/dsdv.dir/depend:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/dsdv/CMakeFiles/dsdv.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/dsdv/CMakeFiles/dsdv.dir/depend


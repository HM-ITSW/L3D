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
include scratch/CMakeFiles/scratch_scratch-simulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include scratch/CMakeFiles/scratch_scratch-simulator.dir/compiler_depend.make

# Include the progress variables for this target.
include scratch/CMakeFiles/scratch_scratch-simulator.dir/progress.make

# Include the compile flags for this target's objects.
include scratch/CMakeFiles/scratch_scratch-simulator.dir/flags.make

scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o: scratch/CMakeFiles/scratch_scratch-simulator.dir/flags.make
scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o: scratch/scratch-simulator.cc
scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o: scratch/CMakeFiles/scratch_scratch-simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o -MF CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o.d -o CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch/scratch-simulator.cc

scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch/scratch-simulator.cc > CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.i

scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch/scratch-simulator.cc -o CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.s

# Object files for target scratch_scratch-simulator
scratch_scratch__simulator_OBJECTS = \
"CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o"

# External object files for target scratch_scratch-simulator
scratch_scratch__simulator_EXTERNAL_OBJECTS =

build/scratch/ns3-dev-scratch-simulator-default: scratch/CMakeFiles/scratch_scratch-simulator.dir/scratch-simulator.cc.o
build/scratch/ns3-dev-scratch-simulator-default: scratch/CMakeFiles/scratch_scratch-simulator.dir/build.make
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libxml2.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libfreetype.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libglib-2.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgthread-2.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgobject-2.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgio-2.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgdk-3.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgtk-3.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libcairo.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libpango-1.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libatk-1.0.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgsl.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libgslcblas.so
build/scratch/ns3-dev-scratch-simulator-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
build/scratch/ns3-dev-scratch-simulator-default: scratch/CMakeFiles/scratch_scratch-simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../build/scratch/ns3-dev-scratch-simulator-default"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scratch_scratch-simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
scratch/CMakeFiles/scratch_scratch-simulator.dir/build: build/scratch/ns3-dev-scratch-simulator-default
.PHONY : scratch/CMakeFiles/scratch_scratch-simulator.dir/build

scratch/CMakeFiles/scratch_scratch-simulator.dir/clean:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch && $(CMAKE_COMMAND) -P CMakeFiles/scratch_scratch-simulator.dir/cmake_clean.cmake
.PHONY : scratch/CMakeFiles/scratch_scratch-simulator.dir/clean

scratch/CMakeFiles/scratch_scratch-simulator.dir/depend:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/scratch/CMakeFiles/scratch_scratch-simulator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : scratch/CMakeFiles/scratch_scratch-simulator.dir/depend


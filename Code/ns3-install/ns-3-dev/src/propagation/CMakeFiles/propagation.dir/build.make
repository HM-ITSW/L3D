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
include src/propagation/CMakeFiles/propagation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/propagation/CMakeFiles/propagation.dir/compiler_depend.make

# Include the progress variables for this target.
include src/propagation/CMakeFiles/propagation.dir/progress.make

# Include the compile flags for this target's objects.
include src/propagation/CMakeFiles/propagation.dir/flags.make

src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.o: src/propagation/model/channel-condition-model.cc
src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.o -MF CMakeFiles/propagation.dir/model/channel-condition-model.cc.o.d -o CMakeFiles/propagation.dir/model/channel-condition-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/channel-condition-model.cc

src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/channel-condition-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/channel-condition-model.cc > CMakeFiles/propagation.dir/model/channel-condition-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/channel-condition-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/channel-condition-model.cc -o CMakeFiles/propagation.dir/model/channel-condition-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o: src/propagation/model/cost231-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/cost231-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/cost231-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/cost231-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o: src/propagation/model/itu-r-1411-los-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/itu-r-1411-los-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/itu-r-1411-los-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/itu-r-1411-los-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o: src/propagation/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.o: src/propagation/model/jakes-process.cc
src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.o -MF CMakeFiles/propagation.dir/model/jakes-process.cc.o.d -o CMakeFiles/propagation.dir/model/jakes-process.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/jakes-process.cc

src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/jakes-process.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/jakes-process.cc > CMakeFiles/propagation.dir/model/jakes-process.cc.i

src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/jakes-process.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/jakes-process.cc -o CMakeFiles/propagation.dir/model/jakes-process.cc.s

src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o: src/propagation/model/jakes-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/jakes-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/jakes-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/jakes-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o: src/propagation/model/kun-2600-mhz-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/kun-2600-mhz-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/kun-2600-mhz-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/kun-2600-mhz-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o: src/propagation/model/okumura-hata-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/okumura-hata-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/okumura-hata-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/okumura-hata-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o: src/propagation/model/probabilistic-v2v-channel-condition-model.cc
src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o -MF CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o.d -o CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/probabilistic-v2v-channel-condition-model.cc

src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/probabilistic-v2v-channel-condition-model.cc > CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/probabilistic-v2v-channel-condition-model.cc -o CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o: src/propagation/model/propagation-delay-model.cc
src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o -MF CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o.d -o CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/propagation-delay-model.cc

src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/propagation-delay-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/propagation-delay-model.cc > CMakeFiles/propagation.dir/model/propagation-delay-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/propagation-delay-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/propagation-delay-model.cc -o CMakeFiles/propagation.dir/model/propagation-delay-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o: src/propagation/model/propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/propagation-loss-model.cc > CMakeFiles/propagation.dir/model/propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o: src/propagation/model/three-gpp-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/three-gpp-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/three-gpp-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/three-gpp-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.s

src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/flags.make
src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o: src/propagation/model/three-gpp-v2v-propagation-loss-model.cc
src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o: src/propagation/CMakeFiles/propagation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o -MF CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o.d -o CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o -c /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/three-gpp-v2v-propagation-loss-model.cc

src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.i"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/three-gpp-v2v-propagation-loss-model.cc > CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.i

src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.s"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/model/three-gpp-v2v-propagation-loss-model.cc -o CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.s

# Object files for target propagation
propagation_OBJECTS = \
"CMakeFiles/propagation.dir/model/channel-condition-model.cc.o" \
"CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/jakes-process.cc.o" \
"CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o" \
"CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o" \
"CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o" \
"CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o"

# External object files for target propagation
propagation_EXTERNAL_OBJECTS =

build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/channel-condition-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/cost231-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-los-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/itu-r-1411-nlos-over-rooftop-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/jakes-process.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/jakes-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/kun-2600-mhz-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/okumura-hata-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/probabilistic-v2v-channel-condition-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/propagation-delay-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/three-gpp-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/model/three-gpp-v2v-propagation-loss-model.cc.o
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/build.make
build/lib/libns3-dev-propagation-default.so: /usr/lib/x86_64-linux-gnu/libgsl.so
build/lib/libns3-dev-propagation-default.so: /usr/lib/x86_64-linux-gnu/libgslcblas.so
build/lib/libns3-dev-propagation-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
build/lib/libns3-dev-propagation-default.so: src/propagation/CMakeFiles/propagation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX shared library ../../build/lib/libns3-dev-propagation-default.so"
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/propagation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/propagation/CMakeFiles/propagation.dir/build: build/lib/libns3-dev-propagation-default.so
.PHONY : src/propagation/CMakeFiles/propagation.dir/build

src/propagation/CMakeFiles/propagation.dir/clean:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation && $(CMAKE_COMMAND) -P CMakeFiles/propagation.dir/cmake_clean.cmake
.PHONY : src/propagation/CMakeFiles/propagation.dir/clean

src/propagation/CMakeFiles/propagation.dir/depend:
	cd /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation /home/hosseinm/UAV-WPT/ns3-install/ns-3-dev/src/propagation/CMakeFiles/propagation.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/propagation/CMakeFiles/propagation.dir/depend


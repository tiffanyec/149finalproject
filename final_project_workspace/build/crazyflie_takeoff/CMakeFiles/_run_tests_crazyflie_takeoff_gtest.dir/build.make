# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eecs149_rst/149finalproject/final_project_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eecs149_rst/149finalproject/final_project_workspace/build

# Utility rule file for _run_tests_crazyflie_takeoff_gtest.

# Include the progress variables for this target.
include crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/progress.make

_run_tests_crazyflie_takeoff_gtest: crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/build.make

.PHONY : _run_tests_crazyflie_takeoff_gtest

# Rule to build all files generated by this target.
crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/build: _run_tests_crazyflie_takeoff_gtest

.PHONY : crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/build

crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/clean:
	cd /home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_takeoff && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/cmake_clean.cmake
.PHONY : crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/clean

crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/depend:
	cd /home/eecs149_rst/149finalproject/final_project_workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eecs149_rst/149finalproject/final_project_workspace/src /home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_takeoff /home/eecs149_rst/149finalproject/final_project_workspace/build /home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_takeoff /home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crazyflie_takeoff/CMakeFiles/_run_tests_crazyflie_takeoff_gtest.dir/depend


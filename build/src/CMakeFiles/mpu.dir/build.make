# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/pi/mpu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/mpu/build

# Include any dependencies generated for this target.
include src/CMakeFiles/mpu.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/mpu.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/mpu.dir/flags.make

src/CMakeFiles/mpu.dir/GY_521.c.o: src/CMakeFiles/mpu.dir/flags.make
src/CMakeFiles/mpu.dir/GY_521.c.o: ../src/GY_521.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/mpu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/mpu.dir/GY_521.c.o"
	cd /home/pi/mpu/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mpu.dir/GY_521.c.o   -c /home/pi/mpu/src/GY_521.c

src/CMakeFiles/mpu.dir/GY_521.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpu.dir/GY_521.c.i"
	cd /home/pi/mpu/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/mpu/src/GY_521.c > CMakeFiles/mpu.dir/GY_521.c.i

src/CMakeFiles/mpu.dir/GY_521.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpu.dir/GY_521.c.s"
	cd /home/pi/mpu/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/mpu/src/GY_521.c -o CMakeFiles/mpu.dir/GY_521.c.s

src/CMakeFiles/mpu.dir/main.c.o: src/CMakeFiles/mpu.dir/flags.make
src/CMakeFiles/mpu.dir/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/mpu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/mpu.dir/main.c.o"
	cd /home/pi/mpu/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mpu.dir/main.c.o   -c /home/pi/mpu/src/main.c

src/CMakeFiles/mpu.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpu.dir/main.c.i"
	cd /home/pi/mpu/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/mpu/src/main.c > CMakeFiles/mpu.dir/main.c.i

src/CMakeFiles/mpu.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpu.dir/main.c.s"
	cd /home/pi/mpu/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/mpu/src/main.c -o CMakeFiles/mpu.dir/main.c.s

# Object files for target mpu
mpu_OBJECTS = \
"CMakeFiles/mpu.dir/GY_521.c.o" \
"CMakeFiles/mpu.dir/main.c.o"

# External object files for target mpu
mpu_EXTERNAL_OBJECTS =

../bin/mpu: src/CMakeFiles/mpu.dir/GY_521.c.o
../bin/mpu: src/CMakeFiles/mpu.dir/main.c.o
../bin/mpu: src/CMakeFiles/mpu.dir/build.make
../bin/mpu: src/CMakeFiles/mpu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/mpu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ../../bin/mpu"
	cd /home/pi/mpu/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mpu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/mpu.dir/build: ../bin/mpu

.PHONY : src/CMakeFiles/mpu.dir/build

src/CMakeFiles/mpu.dir/clean:
	cd /home/pi/mpu/build/src && $(CMAKE_COMMAND) -P CMakeFiles/mpu.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mpu.dir/clean

src/CMakeFiles/mpu.dir/depend:
	cd /home/pi/mpu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/mpu /home/pi/mpu/src /home/pi/mpu/build /home/pi/mpu/build/src /home/pi/mpu/build/src/CMakeFiles/mpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mpu.dir/depend


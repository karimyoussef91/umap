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
CMAKE_SOURCE_DIR = /home/cc/test/umap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cc/test/umap/build

# Include any dependencies generated for this target.
include tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/depend.make

# Include the progress variables for this target.
include tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/progress.make

# Include the compile flags for this target's objects.
include tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/flags.make

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/flags.make
tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o: ../tests/pfbenchmark/pfbenchmark.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/test/umap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o"
	cd /home/cc/test/umap/build/tests/pfbenchmark && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o -c /home/cc/test/umap/tests/pfbenchmark/pfbenchmark.cpp

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.i"
	cd /home/cc/test/umap/build/tests/pfbenchmark && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/test/umap/tests/pfbenchmark/pfbenchmark.cpp > CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.i

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.s"
	cd /home/cc/test/umap/build/tests/pfbenchmark && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/test/umap/tests/pfbenchmark/pfbenchmark.cpp -o CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.s

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.requires:

.PHONY : tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.requires

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.provides: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.requires
	$(MAKE) -f tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/build.make tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.provides.build
.PHONY : tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.provides

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.provides.build: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o


# Object files for target pfbenchmark-read
pfbenchmark__read_OBJECTS = \
"CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o"

# External object files for target pfbenchmark-read
pfbenchmark__read_EXTERNAL_OBJECTS =

tests/pfbenchmark/pfbenchmark-read: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o
tests/pfbenchmark/pfbenchmark-read: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/build.make
tests/pfbenchmark/pfbenchmark-read: src/umap/libumap.so
tests/pfbenchmark/pfbenchmark-read: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cc/test/umap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pfbenchmark-read"
	cd /home/cc/test/umap/build/tests/pfbenchmark && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pfbenchmark-read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/build: tests/pfbenchmark/pfbenchmark-read

.PHONY : tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/build

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/requires: tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/pfbenchmark.cpp.o.requires

.PHONY : tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/requires

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/clean:
	cd /home/cc/test/umap/build/tests/pfbenchmark && $(CMAKE_COMMAND) -P CMakeFiles/pfbenchmark-read.dir/cmake_clean.cmake
.PHONY : tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/clean

tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/depend:
	cd /home/cc/test/umap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cc/test/umap /home/cc/test/umap/tests/pfbenchmark /home/cc/test/umap/build /home/cc/test/umap/build/tests/pfbenchmark /home/cc/test/umap/build/tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/pfbenchmark/CMakeFiles/pfbenchmark-read.dir/depend


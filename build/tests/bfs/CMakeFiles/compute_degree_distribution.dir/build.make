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
include tests/bfs/CMakeFiles/compute_degree_distribution.dir/depend.make

# Include the progress variables for this target.
include tests/bfs/CMakeFiles/compute_degree_distribution.dir/progress.make

# Include the compile flags for this target's objects.
include tests/bfs/CMakeFiles/compute_degree_distribution.dir/flags.make

tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o: tests/bfs/CMakeFiles/compute_degree_distribution.dir/flags.make
tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o: ../tests/bfs/compute_degree_distribution.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/test/umap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o"
	cd /home/cc/test/umap/build/tests/bfs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o -c /home/cc/test/umap/tests/bfs/compute_degree_distribution.cpp

tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.i"
	cd /home/cc/test/umap/build/tests/bfs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/test/umap/tests/bfs/compute_degree_distribution.cpp > CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.i

tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.s"
	cd /home/cc/test/umap/build/tests/bfs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/test/umap/tests/bfs/compute_degree_distribution.cpp -o CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.s

tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.requires:

.PHONY : tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.requires

tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.provides: tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.requires
	$(MAKE) -f tests/bfs/CMakeFiles/compute_degree_distribution.dir/build.make tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.provides.build
.PHONY : tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.provides

tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.provides.build: tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o


# Object files for target compute_degree_distribution
compute_degree_distribution_OBJECTS = \
"CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o"

# External object files for target compute_degree_distribution
compute_degree_distribution_EXTERNAL_OBJECTS =

tests/bfs/compute_degree_distribution: tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o
tests/bfs/compute_degree_distribution: tests/bfs/CMakeFiles/compute_degree_distribution.dir/build.make
tests/bfs/compute_degree_distribution: tests/bfs/CMakeFiles/compute_degree_distribution.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cc/test/umap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compute_degree_distribution"
	cd /home/cc/test/umap/build/tests/bfs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compute_degree_distribution.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/bfs/CMakeFiles/compute_degree_distribution.dir/build: tests/bfs/compute_degree_distribution

.PHONY : tests/bfs/CMakeFiles/compute_degree_distribution.dir/build

tests/bfs/CMakeFiles/compute_degree_distribution.dir/requires: tests/bfs/CMakeFiles/compute_degree_distribution.dir/compute_degree_distribution.cpp.o.requires

.PHONY : tests/bfs/CMakeFiles/compute_degree_distribution.dir/requires

tests/bfs/CMakeFiles/compute_degree_distribution.dir/clean:
	cd /home/cc/test/umap/build/tests/bfs && $(CMAKE_COMMAND) -P CMakeFiles/compute_degree_distribution.dir/cmake_clean.cmake
.PHONY : tests/bfs/CMakeFiles/compute_degree_distribution.dir/clean

tests/bfs/CMakeFiles/compute_degree_distribution.dir/depend:
	cd /home/cc/test/umap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cc/test/umap /home/cc/test/umap/tests/bfs /home/cc/test/umap/build /home/cc/test/umap/build/tests/bfs /home/cc/test/umap/build/tests/bfs/CMakeFiles/compute_degree_distribution.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/bfs/CMakeFiles/compute_degree_distribution.dir/depend


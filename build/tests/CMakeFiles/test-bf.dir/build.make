# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/curtis/Desktop/Brainfuck/hint-term-project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/curtis/Desktop/Brainfuck/hint-term-project/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test-bf.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-bf.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-bf.dir/flags.make

tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o: tests/CMakeFiles/test-bf.dir/flags.make
tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o: ../tests/catch-bf.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/curtis/Desktop/Brainfuck/hint-term-project/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o"
	cd /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-bf.dir/catch-bf.cpp.o -c /home/curtis/Desktop/Brainfuck/hint-term-project/tests/catch-bf.cpp

tests/CMakeFiles/test-bf.dir/catch-bf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-bf.dir/catch-bf.cpp.i"
	cd /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/curtis/Desktop/Brainfuck/hint-term-project/tests/catch-bf.cpp > CMakeFiles/test-bf.dir/catch-bf.cpp.i

tests/CMakeFiles/test-bf.dir/catch-bf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-bf.dir/catch-bf.cpp.s"
	cd /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/curtis/Desktop/Brainfuck/hint-term-project/tests/catch-bf.cpp -o CMakeFiles/test-bf.dir/catch-bf.cpp.s

tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.requires:
.PHONY : tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.requires

tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.provides: tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/test-bf.dir/build.make tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.provides.build
.PHONY : tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.provides

tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.provides.build: tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o

# Object files for target test-bf
test__bf_OBJECTS = \
"CMakeFiles/test-bf.dir/catch-bf.cpp.o"

# External object files for target test-bf
test__bf_EXTERNAL_OBJECTS =

tests/test-bf: tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o
tests/test-bf: tests/CMakeFiles/test-bf.dir/build.make
tests/test-bf: tests/libcatch-main.a
tests/test-bf: src/libbf.so
tests/test-bf: tests/CMakeFiles/test-bf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-bf"
	cd /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-bf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-bf.dir/build: tests/test-bf
.PHONY : tests/CMakeFiles/test-bf.dir/build

tests/CMakeFiles/test-bf.dir/requires: tests/CMakeFiles/test-bf.dir/catch-bf.cpp.o.requires
.PHONY : tests/CMakeFiles/test-bf.dir/requires

tests/CMakeFiles/test-bf.dir/clean:
	cd /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-bf.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-bf.dir/clean

tests/CMakeFiles/test-bf.dir/depend:
	cd /home/curtis/Desktop/Brainfuck/hint-term-project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/curtis/Desktop/Brainfuck/hint-term-project /home/curtis/Desktop/Brainfuck/hint-term-project/tests /home/curtis/Desktop/Brainfuck/hint-term-project/build /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests /home/curtis/Desktop/Brainfuck/hint-term-project/build/tests/CMakeFiles/test-bf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test-bf.dir/depend


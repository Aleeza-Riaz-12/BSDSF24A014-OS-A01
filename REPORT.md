x# Operating Systems Programming Assignment 01

**Name:** Aleeza  
**Roll No:** BSDSF24A014  
**Repository:** BSDSF24A014-OS-A01

## Feature 2: Multi-file Project

### 1. Linking Rule

The rule `$(TARGET): $(OBJECTS)` means that the target executable depends on the object files. When the object files are ready, the linker combines them to create the final executable.

A rule that links against a library is different because the linker receives a library file, such as `libmyutils.a`, and uses the required functions from that library instead of directly linking all source files.

### 2. Git Tag

A Git tag is a name attached to a specific commit. It is useful for marking important versions of a project.

A simple tag only points to a commit. An annotated tag stores additional information such as the tag message, tagger and date.

### 3. GitHub Release

A GitHub Release provides a formal downloadable version of a project. Attaching binaries allows users to download and run the compiled program without compiling the source code themselves.
## Feature 3: Static Library

### 1. Makefile Comparison

In the multifile version, the source files were compiled directly to create the executable.

In the static library version, the utility source files are first compiled into object files. The `ar` command is then used to combine the object files into the static library.

### 2. Purpose of ar

The `ar` command creates and manages archive files. In this project it combines object files into the static library.

`ranlib` creates or updates the archive symbol index. Modern versions of `ar` with the `s` option can create the symbol index automatically.

### 3. Static Linking Symbols

When `nm` is used on `client_static`, symbols such as `mystrlen` can be found in the executable. This shows that the static library code has been linked into the executable.
## Feature 4: Dynamic Library

### 1. Position-Independent Code

Position-Independent Code, enabled using `-fPIC`, is code that can execute correctly regardless of the memory address where it is loaded.

It is important for shared libraries because a shared library may be loaded at different memory addresses by different programs.

### 2. Static vs Dynamic Client Size

The static executable generally has a larger size because the required library code is included inside the executable.

The dynamic executable can be smaller because the library code remains in the shared library and is loaded when the program runs.

The exact sizes depend on the compiler and system, so the sizes observed using `ls -lh bin/` should be recorded in the report.

### 3. LD_LIBRARY_PATH

LD_LIBRARY_PATH is an environment variable used by the dynamic loader to specify additional directories where shared libraries can be searched for.

It was necessary because `libmyutils.so` was stored in the project's `lib` directory, which was not automatically searched by the loader.

This shows that the dynamic loader is responsible for locating and loading required shared libraries when the program starts.

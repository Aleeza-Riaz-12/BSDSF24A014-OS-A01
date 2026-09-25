# Operating Systems Programming Assignment 01

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

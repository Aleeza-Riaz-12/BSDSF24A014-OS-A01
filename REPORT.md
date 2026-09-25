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

# Dockerized C++ Build Example

This repository is an example of using [dockerized C++ build](https://github.com/f-squirrel/dockerized_cpp), which is added as a git submodule in the directory build_tools.<br>
The main Makefile "includes" [build_tools/Makefile](https://github.com/f-squirrel/dockerized_cpp_build_example/blob/master/Makefile#L8), and overrides some default variables such as C and C++ compilers, project name and adds a custom make target.

# Dockerized C++ Build Example

This repository is an example of a C++ project built inside a docker container using the approach described in [Dockerized build environments for C/C++ projects](https://ddanilov.me/dockerized-cpp-build).

The base Makefile from the post is added as a git submodule from [f-squirrel/dockerized_cpp](https://github.com/f-squirrel/dockerized_cpp) and stored in `build_toools` of this repo.

The top-level [Makefile](https://github.com/f-squirrel/dockerized_cpp_build_example/blob/master/Makefile) "includes" [build_tools/Makefile](https://github.com/f-squirrel/dockerized_cpp_build_example/blob/master/Makefile#L8) and overrides some default variables such as C/C++ compilers, project name, and adds a custom make target.

Additionally, the directory [.devcontainer](https://github.com/f-squirrel/dockerized_cpp_build_example/tree/master/.devcontainer) contains the minimum settings required to launch VS Code in the dockerized mode described in [VS Code with dockerized build environments for C/C++ projects](https://ddanilov.me/dockerized-cpp-build-with-vscode).

# C++ project template

A template for C++ projects, offering build system support (CMake) and dependency management (vcpkg)  

The project workflow is inspired in flows used by npm, yarn and alike.

This project is more crafted towards ease of use, rather than flexibility, so depending on your project
needs, it might not be the best pick.

## Requirements

The following tools are required to be installed on your system:
- python: required to run project.py;
- git: required to clone vcpkg;

CMake itself is not required to be installed, this tool is obtained from vcpkg, hence, you'll not
have to worry about:
- Having to install CMake on your system;
- Having to adjust your already installed CMake version to fit this project template requirements;

## How to use it

The most common functionality can be achieved through the helper script *project.py*:

The usage of the helper script follows the pattern:

```bash
python project.py <command> <args>
```

where *command* can be:
- init: initialize the project, setup vcpkg and cmake;
- build: builds the project using cmake;
- add: adds a new third party component using vcpkg;
- install: installs the currently added components using vcpkg;

The commands *build* and *add* accept args, besides the command names.
For command *build* we have the options:
- output_folder: specify the build output folder;
    - e.g:  
    ```bash
    python project.py build --output_folder=myBuildFolder
    ```
- cmake_args: all the arguments after this option are forwarded to cmake. This option should come for last!
    - e.g:
    ```bash 
    python project.py build --output_folder=myBuild --cmake_args -DCMAKE_BUILD_TYPE=Debug
    ```

For command *add*, the additional parameters are basically the packages to be added in the project. For example:

```bash
python project.py add glfw glew
```

## Example usage

For a newly created project, supposing we're going to use abseil and 7zip libraries, a typical use flow would be:

```bash
python project.py init
python project.py add abseil 7zip
python project.py install
python project.py build
```


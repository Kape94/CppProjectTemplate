git clone https://github.com/Microsoft/vcpkg.git

cd vcpkg

call bootstrap-vcpkg.bat

vcpkg install vcpkg-cmake
vcpkg install vcpkg-cmake-config
REM install the packages for you project
REM ex: vcpkg install glfw3

pause

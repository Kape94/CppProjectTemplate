cd ..

# 1) Setup vcpkg
git clone https://github.com/Microsoft/vcpkg.git

cd vcpkg

sh bootstrap-vcpkg.sh

# 2) Install dependencies 

./vcpkg install vcpkg-cmake
./vcpkg install vcpkg-cmake-config

# install the packages for you project
# ex: vcpkg install glfw3

# 3) Build the project

cd ..

CMAKE=.$(find -type f -name cmake | head -n 1)
VCPKG_TOOLCHAIN=./vcpkg/scripts/buildsystems/vcpkg.cmake

mkdir build
cd build

$CMAKE .. -DCMAKE_TOOLCHAIN_FILE=$VCPKG_TOOLCHAIN
$CMAKE --build .
cd ..

git clone https://github.com/Microsoft/vcpkg.git

cd vcpkg

sh bootstrap-vcpkg.sh

./vcpkg install curl

cd ..

CMAKE=.$(find -type f -name cmake | head -n 1)

mkdir build
cd build

$CMAKE .. -DCMAKE_TOOLCHAIN_FILE=./vcpkg/scripts/buildsystems/vcpkg.cmake
$CMAKE --build .
cmake_minimum_required(VERSION 3.22)
project(newProject)

file(GLOB SRC_FILES src/*.cpp)
add_executable(${PROJECT_NAME} ${SRC_FILES})


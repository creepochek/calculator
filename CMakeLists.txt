cmake_minimum_required(VERSION 3.10)

project(CalculatorProject)

set(CMAKE_CXX_STANDARD 11)

include_directories(${CMAKE_SOURCE_DIR})

set(SOURCES calculator.cpp calculator_operations.cpp main.cpp)

add_library(calculator_lib STATIC ${SOURCES})

add_executable(calculator_main main.cpp)
target_link_libraries(calculator_main PRIVATE calculator_lib)


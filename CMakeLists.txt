cmake_minimum_required(VERSION 3.21)

project(GD-Deco-AI VERSION 0.4.0)

# Use C++17 (fixes fmt consteval build error)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find source files
file(GLOB_RECURSE SOURCES
    src/*.cpp
)

# Create Geode mod library
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Load Geode SDK
add_subdirectory(
    $ENV{GEODE_SDK}
    ${CMAKE_CURRENT_BINARY_DIR}/geode
)

# Setup the Geode mod
setup_geode_mod(${PROJECT_NAME})

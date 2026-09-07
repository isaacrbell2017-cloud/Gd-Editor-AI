cmake_minimum_required(VERSION 3.21)

project(GD-Deco-AI VERSION 0.4.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find all source files
file(GLOB_RECURSE SOURCES
    src/*.cpp
)

# Create the Geode mod library
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Load Geode SDK
add_subdirectory(
    $ENV{GEODE_SDK}
    ${CMAKE_CURRENT_BINARY_DIR}/geode
)

# Setup the Geode mod
setup_geode_mod(${PROJECT_NAME})

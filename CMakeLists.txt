cmake_minimum_required(VERSION 3.21)

project(GD-Deco-AI VERSION 0.4.0)

# Geode uses C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Fix fmt compile issue
set(FMT_USE_NONTYPE_TEMPLATE OFF)

# Find all source files
file(GLOB_RECURSE SOURCES
    src/*.cpp
)

# Create the mod
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Load Geode SDK
add_subdirectory(
    $ENV{GEODE_SDK}
    ${CMAKE_CURRENT_BINARY_DIR}/geode
)

# Setup Geode mod
setup_geode_mod(${PROJECT_NAME})

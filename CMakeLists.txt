cmake_minimum_required(VERSION 3.21)

project(GD-Deco-AI VERSION 0.4.0)

# Geode needs C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force fmt fixes
set(FMT_USE_CONSTEXPR OFF CACHE BOOL "" FORCE)
set(FMT_USE_NONTYPE_TEMPLATE OFF CACHE BOOL "" FORCE)

# Get source files
file(GLOB_RECURSE SOURCES
    src/*.cpp
)

# Build mod
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Load Geode SDK
add_subdirectory(
    $ENV{GEODE_SDK}
    ${CMAKE_CURRENT_BINARY_DIR}/geode
)

# Setup Geode
setup_geode_mod(${PROJECT_NAME})

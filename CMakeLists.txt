cmake_minimum_required(VERSION 3.21)

project(GD_Deco_AI VERSION 0.4.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Find the mod source files
file(GLOB_RECURSE SOURCES
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
)

# Create the Geode mod
add_library(${PROJECT_NAME} SHARED
    ${SOURCES}
)

# Geode SDK is supplied by the GitHub Actions build
add_subdirectory(
    "$ENV{GEODE_SDK}"
    "${CMAKE_CURRENT_BINARY_DIR}/geode"
)

# Configure the project as a Geode mod
setup_geode_mod(${PROJECT_NAME})

# Position-independent code
set_target_properties(${PROJECT_NAME} PROPERTIES
    POSITION_INDEPENDENT_CODE ON
)

message(STATUS "Building GD Deco AI v0.4.0")
message(STATUS "Geode SDK: $ENV{GEODE_SDK}")

cmake_minimum_required(VERSION 3.21)

project(GD_Deco_AI VERSION 0.4.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Disable fmt consteval for Android cross-compilation
add_compile_definitions(FMT_CONSTEVAL=)

# Find source files
file(GLOB_RECURSE SOURCES
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
)

# Create the mod
add_library(${PROJECT_NAME} SHARED
    ${SOURCES}
)

# Show which SDK is being used
message(STATUS "Geode SDK: $ENV{GEODE_SDK}")
message(STATUS "Building GD Deco AI v0.4.0")

# Load Geode SDK
add_subdirectory(
    "$ENV{GEODE_SDK}"
    "${CMAKE_CURRENT_BINARY_DIR}/geode"
)

# Configure Geode mod
setup_geode_mod(${PROJECT_NAME})

# Enable position independent code
set_target_properties(${PROJECT_NAME}
    PROPERTIES
    POSITION_INDEPENDENT_CODE ON
)

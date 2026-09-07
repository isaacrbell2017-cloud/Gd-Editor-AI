cmake_minimum_required(VERSION 3.25)

project(GD_Deco_AI)

# Fix fmt + Clang 21 constexpr errors
add_compile_definitions(FMT_USE_CONSTEXPR=0)

add_library(${PROJECT_NAME} SHARED
    src/main.cpp
)

target_include_directories(${PROJECT_NAME} PRIVATE
    include
)

find_package(Geode REQUIRED)

setup_geode_mod(${PROJECT_NAME})

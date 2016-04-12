cmake_minimum_required(VERSION 2.8.7)
project(gherkin-demo-lib)

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
    message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()

include_directories(${CMAKE_CURRENT_LIST_DIR}/include)

add_library(gherkin_demo_lib
        ${CMAKE_CURRENT_LIST_DIR}/src/charutil.cpp
        ${CMAKE_CURRENT_LIST_DIR}/src/soundex.cpp
        ${CMAKE_CURRENT_LIST_DIR}/src/stringutil.cpp)

add_subdirectory(test)
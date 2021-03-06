cmake_minimum_required(VERSION 2.8.7)
project(gherkin-demo-test)

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

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_LIST_DIR}/../../../cmake/modules")

find_package(GMock REQUIRED)
find_package(Cucumber-Cpp REQUIRED)

include_directories(
        ${CUKE_INCLUDE_DIRS}
        ${CMAKE_CURRENT_LIST_DIR}/../include)

include_directories(
        ${GTEST_INCLUDE_DIRS}
        ${Cucumber-Cpp_INCLUDE_DIRS})

add_executable(FeatureShowcaseSteps
        ${CMAKE_CURRENT_LIST_DIR}/features/step_definitions/soundexGherkinTestSteps.cpp)

target_link_libraries(FeatureShowcaseSteps
        cucumber-cpp
        gherkin_demo_lib)




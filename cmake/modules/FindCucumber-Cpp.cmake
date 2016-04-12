if(NOT Cucumber-Cpp_FOUND)
    set(_Cucumber-Cpp_ROOT_DIR ${CMAKE_MODULE_PATH}/../../vendor/cucumber-cpp)
    add_subdirectory(${_Cucumber-Cpp_ROOT_DIR} cucumbercpp)
    set(Cucumber-Cpp_INCLUDE_DIRS ${_Cucumber-Cpp_ROOT_DIR}/include)
    set(Cucumber-Cpp_LIBRARY Cucumber-Cpp)
    set(Cucumber-Cpp_FOUND True)

    mark_as_advanced(
            _Cucumber-Cpp_ROOT_DIR)
endif()
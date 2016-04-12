
if(NOT GMOCK_FOUND)
    set(_GOOGLETEST_DISTRIBUTION_ROOT_DIR ${CMAKE_MODULE_PATH}/../../vendor/googletest-distribution)
    set(_GMOCK_ROOT_DIR ${_GOOGLETEST_DISTRIBUTION_ROOT_DIR}/googlemock)
    add_subdirectory(${_GMOCK_ROOT_DIR} gmock)
    set(GMOCK_INCLUDE_DIR ${_GMOCK_ROOT_DIR}/include)
    set(GMOCK_LIBRARY gmock)
    set(GMOCK_FOUND True)

    set(GTEST_INCLUDE_DIRS ${_GOOGLETEST_DISTRIBUTION_ROOT_DIR}/googletest/include)
    set(GTEST_LIBRARY gtest)
    set(GTEST_FOUND True)

    set(GMOCK_INCLUDE_DIRS
            ${GMOCK_INCLUDE_DIR}
            ${GTEST_INCLUDE_DIRS})

    mark_as_advanced(
            _GOOGLETEST_DISTRIBUTION_ROOT_DIR
            _GMOCK_ROOT_DIR)
endif()
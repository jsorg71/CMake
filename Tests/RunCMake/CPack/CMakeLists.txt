cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

if(POLICY CMP0129)
  cmake_policy(SET CMP0129 NEW)
endif()

set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "")

project(${RunCMake_TEST} CXX)

if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${GENERATOR_TYPE}/packaging_${PACKAGING_TYPE}_default.cmake")
  include(${GENERATOR_TYPE}/packaging_${PACKAGING_TYPE}_default.cmake)
endif()

# set default test name (can be overwritten in test.cmake or specifics.cmake)
string(TOLOWER "${RunCMake_TEST_FILE_PREFIX}" CPACK_PACKAGE_NAME)

include(tests/${RunCMake_TEST_FILE_PREFIX}/test.cmake)

set(CPACK_GENERATOR "${GENERATOR_TYPE}")
include(CPack)

if(COMMAND run_after_include_cpack)
  run_after_include_cpack()
endif()

set(CMake_TEST_FindOpenMP "ON" CACHE BOOL "")
set(CMake_TEST_FindOpenMP_C "ON" CACHE BOOL "")
set(CMake_TEST_FindOpenMP_CXX "ON" CACHE BOOL "")
set(CMake_TEST_GUI "ON" CACHE BOOL "")
if (NOT "$ENV{CMAKE_CI_NIGHTLY}" STREQUAL "")
  set(CMake_TEST_ISPC "ON" CACHE STRING "")
endif()
set(CMake_TEST_TLS_VERIFY_URL "https://gitlab.kitware.com" CACHE STRING "")

include("${CMAKE_CURRENT_LIST_DIR}/configure_macos_common.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/configure_common.cmake")

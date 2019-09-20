cmake_minimum_required(VERSION 2.8.2 FATAL_ERROR)
cmake_policy(VERSION 2.8)

project( TEST )

set (CMAKE_C_FLAGS "-Werror -Wall -Wextra -Wno-unused-parameter -D_GNU_SOURCE -std=c11 -O3 -g ${CMAKE_C_FLAGS}")

add_custom_target( ReplicatePythonSourceTree ALL ${CMAKE_COMMAND} -P
  ${CMAKE_CURRENT_SOURCE_DIR}/cmake/ReplicatePythonSourceTree.cmake
  ${CMAKE_CURRENT_BINARY_DIR}
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} )

include( GNUInstallDirs )

add_subdirectory(lib)

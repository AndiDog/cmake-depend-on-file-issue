add_custom_target(common_source ALL DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/common.py")

add_executable(MyExe main.cpp)

add_custom_command(
  OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/test.success"
  DEPENDS MyExe
  COMMAND ./test.py && ${CMAKE_COMMAND} -E touch "${CMAKE_CURRENT_BINARY_DIR}/test.success"
  WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
  VERBATIM
)

add_custom_target(MyTest ALL DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/test.success" common_source)

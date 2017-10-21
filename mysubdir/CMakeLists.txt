add_custom_target(common_source DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/common.py")

add_executable(MyExe main.cpp)
add_dependencies(MyExe common_source)

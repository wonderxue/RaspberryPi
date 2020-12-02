aux_source_directory(. SRC_LIST)
add_executable(oled ${SRC_LIST})
target_link_libraries(oled wiringPi)
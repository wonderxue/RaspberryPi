aux_source_directory(. SRC_LIST)
add_executable(mpu ${SRC_LIST})
target_link_libraries(mpu wiringPi)

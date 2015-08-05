project (pupiltracker)
cmake_minimum_required(VERSION 2.8)




find_package(Boost REQUIRED)
find_package(PkgConfig)
pkg_check_modules(ZeroMQ libzmq)
find_library(ZMQ_LIB zmq)
find_package(OpenCV REQUIRED)


add_executable(swirski_tracker swirski_main.cpp)
target_link_libraries(swirski_tracker ${ZMQ_LIB})
add_library(swirski_lib swirski_pupil/PupilTracker.cpp swirski_pupil/cvx.cpp swirski_pupil/utils.cpp)
target_link_libraries(swirski_tracker swirski_lib ${OpenCV_LIBS} tbb)

#add_executable(canny_tracker canny_main.cpp canny_pupil/PupilTracker.cpp)
#target_link_libraries(canny_tracker ${OpenCV_LIBS})

# add the install targets
install (TARGETS swirski_tracker DESTINATION bin)

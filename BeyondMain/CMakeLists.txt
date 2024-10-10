file(GLOB HEADER_FILES "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h")
file(GLOB SOURCE_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

set(LIBRARIES)
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/include )
add_library(BeyondMain ${HEADER_FILES} ${SOURCE_FILES} )
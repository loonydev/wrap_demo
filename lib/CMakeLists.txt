set (TARGET "mal")

include_directories(
    include
    src
)
set (SOURCES
    ./src/test_main.c
)

set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

add_library(${TARGET} SHARED ${SOURCES})
target_link_libraries(${TARGET} ${LINKLIBS})

add_library(${TARGET}static STATIC ${SOURCES})
target_link_libraries(${TARGET}static ${LINKLIBS})

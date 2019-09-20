file( COPY setup.py DESTINATION "${CMAKE_ARGV3}"
 FILES_MATCHING PATTERN "*.py" )

file( COPY lib/src lib/include DESTINATION "${CMAKE_ARGV3}")

file(GLOB MY_WRAP
 "python_wrap/*"
)

file( COPY ${MY_WRAP} DESTINATION "${CMAKE_ARGV3}")

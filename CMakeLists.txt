cmake_minimum_required(VERSION 3.10)
project(HuffmanEncoding)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/src)

# Source files
set(SOURCES
    src/Node.cpp
    src/HuffmanCoding.cpp
)

# Main executable
add_executable(huffman_main ${SOURCES} src/main.cpp)

# Test executable
add_executable(huffman_test ${SOURCES} tests/test.cpp)

# Optional: Set output directories
set_target_properties(huffman_main huffman_test
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}
)

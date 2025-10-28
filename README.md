# Huffman Encoding and Decoding

A comprehensive C++ implementation of Huffman encoding with support for both binary and ternary Huffman trees. This project demonstrates data compression techniques using priority queues and tree data structures.

## Features

- **Binary Huffman Encoding**: Traditional 2-way Huffman tree implementation
- **Ternary Huffman Encoding**: 3-way Huffman tree for comparison
- **Priority Queue**: Min-heap implementation for optimal tree construction
- **Compression Metrics**: 
  - Shannon entropy calculation
  - Average code length analysis
  - Compression efficiency comparison
  - Compression ratio evaluation
- **Complete Encode/Decode**: Full functionality with verification
- **File Support**: Process text files of any size

## Project Details

- **Course**: Data Structures and Algorithm
- **Date**: Sep 24 - Nov 24
- **Implementation**: C++ with STL containers (unordered_map, priority_queue)

## Building the Project

### Using Make
```bash
make all           # Build everything
make main          # Build main program
make test          # Build and run tests
make clean         # Clean build files
make run           # Run main program
```

### Using CMake
```bash
mkdir build
cd build
cmake ..
make
./huffman_main
./huffman_test
```

### Manual Compilation
```bash
# Compile main program
g++ -std=c++11 -o huffman_main src/Node.cpp src/HuffmanCoding.cpp src/main.cpp

# Compile tests
g++ -std=c++11 -o huffman_test src/Node.cpp src/HuffmanCoding.cpp tests/test.cpp

# Run
./huffman_main
./huffman_test
```

## Usage

### Basic Example
```cpp
#include "HuffmanCoding.h"

int main() {
    HuffmanCoding hc;
    std::string text = "hello world";
    
    // Build frequency map
    hc.buildFrequencyMap(text);
    
    // Encode
    std::string encoded = hc.encodeBinary(text);
    
    // Decode
    std::string decoded = hc.decodeBinary(encoded);
    
    // Display statistics
    hc.displayStatistics(text);
    
    return 0;
}
```

### Processing Files

The program automatically processes test files in the `data/` directory:
```bash
./huffman_main
```

## Algorithm Details

### Binary Huffman Tree
- Uses a min-heap priority queue
- Combines two lowest-frequency nodes at each step
- Generates optimal prefix codes
- Time Complexity: O(n log n)

### Ternary Huffman Tree
- Extends Huffman coding to base-3
- Combines three nodes at each step
- May require dummy nodes for proper tree structure
- Useful for certain compression scenarios

### Metrics Calculated

1. **Shannon Entropy**: H = -Σ(p(x) * log₂(p(x)))
2. **Average Code Length**: L = Σ(p(x) * length(code(x)))
3. **Efficiency**: η = H / L × 100%
4. **Compression Ratio**: (Original size) / (Compressed size)

## Testing

The project includes comprehensive unit tests:
```bash
make test
```

Tests cover:
- Basic encoding/decoding
- Single character strings
- Ternary encoding
- Long text processing
- Special characters
- Efficiency metrics validation

## Sample Output

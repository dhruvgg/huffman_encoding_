# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -O2

# Directories
SRC_DIR = src
TEST_DIR = tests
BUILD_DIR = build
DATA_DIR = data

# Source files
SOURCES = $(SRC_DIR)/Node.cpp $(SRC_DIR)/HuffmanCoding.cpp
MAIN_SRC = $(SRC_DIR)/main.cpp
TEST_SRC = $(TEST_DIR)/test.cpp

# Object files
OBJECTS = $(SOURCES:.cpp=.o)

# Executables
MAIN_EXEC = huffman_main
TEST_EXEC = huffman_test

# Targets
.PHONY: all clean test run directories

all: directories $(MAIN_EXEC) $(TEST_EXEC)

directories:
	@mkdir -p $(BUILD_DIR) $(DATA_DIR)

$(MAIN_EXEC): $(OBJECTS) $(MAIN_SRC)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(TEST_EXEC): $(OBJECTS) $(TEST_SRC)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

test: $(TEST_EXEC)
	@echo "Running tests..."
	@./$(TEST_EXEC)

run: $(MAIN_EXEC)
	@./$(MAIN_EXEC)

clean:
	@rm -f $(OBJECTS) $(MAIN_EXEC) $(TEST_EXEC)
	@rm -rf $(BUILD_DIR)
	@echo "Cleaned build files"

help:
	@echo "Available targets:"
	@echo "  all        - Build all executables"
	@echo "  main       - Build main program"
	@echo "  test       - Build and run tests"
	@echo "  run        - Run main program"
	@echo "  clean      - Remove build files"
	@echo "  help       - Show this help message"

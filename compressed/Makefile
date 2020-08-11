CXX = clang++-9
CXXFLAGS = -fsanitize=fuzzer,address -g

DEFINES = -DCUSTOM_MUTATOR

LIBS = -lz

SOURCE = compressed-test.cpp
TARGET = compressed-test
		
all:
	$(CXX) $(CXXFLAGS) $(DEFINES) $(SOURCE) -o $(TARGET) $(LIBS)
CXX = clang++-9
CXXFLAGS = -fsanitize=fuzzer,address -g

DEFINES = 

LIBS = -lz

SOURCE = compressed-test.cpp
TARGET = compressed-test
		
all:
	$(CXX) $(CXXFLAGS) $(DEFINES) $(SOURCE) -o $(TARGET) $(LIBS)

custom-mutator: DEFINES = -DCUSTOM_MUTATOR
custom-mutator: TARGET = compressed-test+mutator
custom-mutator:
	$(CXX) $(CXXFLAGS) $(DEFINES) $(SOURCE) -o $(TARGET) $(LIBS)
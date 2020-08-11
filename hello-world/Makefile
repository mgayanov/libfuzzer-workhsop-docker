CXX = clang++-9
CXXFLAGS = -g

SOURCE = hello-world.cpp
TARGET = hello-world

all: CXXFLAGS += -fsanitize=fuzzer
all:
	$(CXX) $(CXXFLAGS) $(SOURCE) -o $(TARGET)


asan: CXXFLAGS += -fsanitize=fuzzer,address
asan: TARGET = hello-world+asan
asan:
	$(CXX) $(CXXFLAGS) $(SOURCE) -o $(TARGET)
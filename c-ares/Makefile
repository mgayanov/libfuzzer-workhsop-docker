CXX = clang++-9
CXXFLAGS = -fsanitize=fuzzer,address -g

CARES_PATH = /opt/c-ares

INCLUDES = -I$(CARES_PATH)

LIBS = 	$(CARES_PATH)/.libs/libcares.a

SOURCE = c-ares.cpp
TARGET = c-ares
		
all:
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SOURCE) -o $(TARGET) $(LIBS)
CXX = clang++-9
CXXFLAGS = -fsanitize=fuzzer,address -g

FREETYPE2 = /opt/freetype2

INCLUDES = -I/usr/local/include/freetype2 #-I$(FREETYPE2)/include

LIBS = /usr/local/lib/libfreetype.a -larchive -lz 

SOURCE = ftfuzzer.cc #$(FREETYPE2)/src/tools/ftfuzzer/ftfuzzer.cc
TARGET = freetype2 

all:
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SOURCE) -o $(TARGET) $(LIBS)
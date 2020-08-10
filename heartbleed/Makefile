CXX = clang++-9
CXXFLAGS = -fsanitize=fuzzer,address -g

OPENSSL_PATH = /home/workshop/heartbleed/src

INCLUDES = -I$(OPENSSL_PATH)/include

LIBS = 	$(OPENSSL_PATH)/libssl.a \
		$(OPENSSL_PATH)/libcrypto.a

SOURCE = heartbleed.cpp
TARGET = heartbleed
		
all:
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SOURCE) -o $(TARGET) $(LIBS)
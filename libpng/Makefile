CXX=clang++-9
CXXFLAGS = -fsanitize=fuzzer,address -g -fsanitize-address-use-after-scope -fsanitize-coverage=trace-cmp,trace-gep,trace-div

INCLUDES = -include png_mutator.h

DEFINES = -DPNG_MUTATOR_DEFINE_LIBFUZZER_CUSTOM_MUTATOR

LIBS = /usr/local/lib/libpng12.a -lz

all:
	$(CXX) $(CXXFLAGS) $(DEFINES) $(INCLUDES) libpng.cpp -o libpng $(LIBS)
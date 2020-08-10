CXX=clang++-9
CXXFLAGS=-g
FSANITIZE=-fsanitize=fuzzer,address

PROTOC != which protoc

ifndef PROTOC
$(error install protoc or specify it: PROTOC=path/to/protoc)
endif

INCLUDES = -I/usr/include/libprotobuf-mutator

LIBS =	-lprotobuf-mutator-libfuzzer \
	-lprotobuf-mutator \
	/usr/lib/x86_64-linux-gnu/libprotobuf.a

fuzzer_name ?= scratch

PROTO=$(fuzzer_name).proto
PB_SOURCE=$(fuzzer_name).pb.cc
PB_OBJECT=$(fuzzer_name).pb.cc.o
PB_ARCHIVE=$(fuzzer_name).pb.a
PB_HEADER=$(fuzzer_name).pb.h

FZ_SOURCE=$(fuzzer_name).cpp
FZ_OBJECT=$(fuzzer_name).cpp.o

all: $(fuzzer_name)

.ONESHELL:
SHELL = /bin/bash
.SHELLFLAGS = -c

rename:
	@mv *.proto $(PROTO)
	@for f in `ls`
	do
		if [[ ! -z `grep "DEFINE_PROTO_FUZZER" $$f` ]] && [[ $$f == *.cpp ]]
		then
			sed -i 's/#include "\w*\.pb\.h"/#include "$(PB_HEADER)"/' $$f
			@mv $$f $(FZ_SOURCE)
			break
		fi
	done

$(fuzzer_name): $(PB_ARCHIVE) $(FZ_OBJECT)
	$(CXX) $(CXXFLAGS) $(FSANITIZE) $(FZ_OBJECT) $(PB_ARCHIVE) -o $(fuzzer_name) $(LIBS)

$(PB_ARCHIVE):
	$(PROTOC) --cpp_out=. $(PROTO) && \
	$(CXX) $(CXXFLAGS) $(PB_SOURCE) -o $(PB_OBJECT) -c && \
	ar qc $(PB_ARCHIVE) $(PB_OBJECT) && \
	ranlib $(PB_ARCHIVE)

$(FZ_OBJECT):
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(FSANITIZE) $(FZ_SOURCE) -o $(FZ_OBJECT) -c

clean:
	rm -f $(fuzzer_name)
	rm -f $(PB_OBJECT)
	rm -f $(PB_ARCHIVE)
	rm -f $(FZ_OBJECT)
	rm -f $(PB_SOURCE)
	rm -f $(PB_HEADER)

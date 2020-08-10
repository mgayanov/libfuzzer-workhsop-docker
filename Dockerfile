FROM ubuntu:18.04

RUN apt-get update && \
        apt-get -y install build-essential gcc clang-9 git libtool m4 automake cmake zlib1g-dev liblzma-dev

COPY protobuf-mutator/protoc /usr/bin/protoc

RUN git clone https://github.com/protocolbuffers/protobuf /tmp/protobuf && \
        cd /tmp/protobuf/cmake && \
        mkdir build && \
        cd build &&  \
        cmake \
                -DCMAKE_INSTALL_PREFIX=/usr \
                -Dprotobuf_BUILD_PROTOC_BINARIES=OFF \
                -DCMAKE_BUILD_TYPE=Release \
                -Dprotobuf_BUILD_TESTS=OFF .. && \
        make all install && \
        rm -rf /tmp/protobuf

RUN git clone https://github.com/google/libprotobuf-mutator /tmp/libprotobuf-mutator && \
        cd /tmp/libprotobuf-mutator && \
        mkdir build && \
        cd build && \
        cmake \
                -G "Unix Makefiles" \
                -DCMAKE_C_COMPILER=clang-9 \
                -DCMAKE_CXX_COMPILER=clang++-9 \
                -DCMAKE_BUILD_TYPE=Debug \
                -DLIB_PROTO_MUTATOR_TESTING=OFF \
                -DCMAKE_INSTALL_PREFIX=/usr .. && \
        make all install && \
        rm -rf /tmp/libprotobuf-mutator

ADD libpng/libpng-1.2.56.tar.gz /tmp

RUN cd /tmp/libpng-1.2.56 && \
        CC=clang-9 CFLAGS="-fsanitize=address,fuzzer-no-link -g" ./configure --enable-shared=no && \
        make install && \
        rm -rf /tmp/libpng

WORKDIR /home/workshop
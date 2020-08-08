FROM ubuntu:18.04

RUN apt-get update && \
        apt-get -y dist-upgrade && \
        apt-get -y install build-essential gcc clang-9 git vim libtool m4 automake 
        
RUN git clone https://github.com/openssl/openssl.git /opt/openssl && cd /opt/openssl && git checkout OpenSSL_1_0_1f && \
        CC="clang-9 -O2 -fno-omit-frame-pointer -fsanitize=address,fuzzer-no-link -fsanitize-address-use-after-scope" ./config -d && make clean && make

RUN git clone https://github.com/c-ares/c-ares.git /opt/c-ares && cd /opt/c-ares && git reset --hard 51fbb479f7948fca2ace3ff34a15ff27e796afdd && \
            ./buildconf && CC=clang-9 CXX=clang++-9 CFLAGS="-fsanitize=address,fuzzer-no-link" CXXFLAGS="address,fuzzer-no-link" ./configure --enable-debug && make && \
        rm -rf /var/lib/apt/lists/*

WORKDIR /home/workshop

COPY hello-world /home/workshop/hello-world
COPY heartbleed /home/workshop/heartbleed
COPY c-ares /home/workshop/c-ares
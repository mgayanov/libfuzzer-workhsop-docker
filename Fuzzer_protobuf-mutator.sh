#!/bin/bash

docker run --rm -ti \
    -v `pwd`/protobuf-mutator:/home/workshop/protobuf-mutator m1gayanov/libfuzzer-workshop \
    /bin/bash -c "cd protobuf-mutator && ./build.sh && ./run.sh"
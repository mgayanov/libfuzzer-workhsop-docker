#!/bin/bash

docker run --rm -ti \
    -v `pwd`/protobuf-mutator:/home/workshop/protobuf-mutator workshop \
    /bin/bash -c "cd protobuf-mutator && ./build.sh && ./run.sh"
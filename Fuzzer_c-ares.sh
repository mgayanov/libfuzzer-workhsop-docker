#!/bin/bash

docker run --rm -ti \
    -v `pwd`/c-ares:/home/workshop/c-ares \
    m1gayanov/libfuzzer-workshop \
    /bin/bash -c "cd c-ares && ./build.sh && ./run.sh"
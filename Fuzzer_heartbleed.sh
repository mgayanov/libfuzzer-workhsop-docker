#!/bin/bash

docker run --rm -ti \
    -v `pwd`/heartbleed:/home/workshop/heartbleed \
    m1gayanov/libfuzzer-workshop \
    /bin/bash -c "cd heartbleed && ./build.sh && ./run.sh"
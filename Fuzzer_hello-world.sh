#!/bin/bash

docker run --rm -ti \
    -v `pwd`/hello-world:/home/workshop/hello-world \
    m1gayanov/libfuzzer-workshop \
    /bin/bash -c "cd hello-world && ./build.sh && ./run.sh"
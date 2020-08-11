#!/bin/bash

docker run --rm -ti \
    -v `pwd`/libpng:/home/workshop/libpng \
    m1gayanov/libfuzzer-workshop \
    /bin/bash -c "cd libpng && ./build.sh && ./run.sh"
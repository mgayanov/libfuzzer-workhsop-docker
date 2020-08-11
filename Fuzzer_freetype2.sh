#!/bin/bash

docker run --rm -ti \
    -v `pwd`/freetype2:/home/workshop/freetype2 \
    m1gayanov/libfuzzer-workshop \
    /bin/bash -c "cd freetype2 && ./build.sh && ./run.sh"
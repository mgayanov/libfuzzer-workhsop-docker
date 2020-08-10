#!/bin/bash

docker run --rm -ti -v `pwd`/libpng:/home/workshop/libpng workshop /bin/bash -c "cd libpng && ./build.sh && ./run.sh"
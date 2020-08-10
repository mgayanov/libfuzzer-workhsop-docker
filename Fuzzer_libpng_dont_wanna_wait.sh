#!/bin/bash

docker run --rm -ti -v `pwd`/libpng:/home/workshop/libpng workshop /bin/bash -c "cd libpng && ./build.sh && ./run_dont_wanna_wait.sh"
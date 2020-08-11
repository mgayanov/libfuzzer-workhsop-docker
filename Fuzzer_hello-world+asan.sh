#!/bin/bash

docker run --rm -ti -v `pwd`/hello-world:/home/workshop/hello-world workshop /bin/bash -c "cd hello-world && ./build.sh asan && ./run.sh asan"
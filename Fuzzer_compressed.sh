#!/bin/bash

docker run --rm -ti -v `pwd`/compressed:/home/workshop/compressed workshop /bin/bash -c "cd compressed && ./build.sh && ./run.sh"
#!/bin/bash

docker run --rm -ti -v `pwd`/hello-world:/home/workshop/hello-world \
                    -v `pwd`/heartbleed:/home/workshop/heartbleed \
                    -v `pwd`/c-ares:/home/workshop/c-ares \
                    -v `pwd`/structure-aware:/home/workshop/structure-aware \
                    workshop
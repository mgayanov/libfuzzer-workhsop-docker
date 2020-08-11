#!/bin/bash

docker run --rm -ti -v `pwd`/hello-world:/home/workshop/hello-world \
                    -v `pwd`/heartbleed:/home/workshop/heartbleed \
                    -v `pwd`/c-ares:/home/workshop/c-ares \
                    -v `pwd`/protobuf-mutator:/home/workshop/protobuf-mutator \
                    -v `pwd`/compressed:/home/workshop/compressed \
                    -v `pwd`/freetype2:/home/workshop/freetype2 \
                    workshop
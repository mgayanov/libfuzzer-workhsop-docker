#!/bin/bash

case "$1" in
    asan)
        ./hello-world+asan
        ;;
    *)
        ./hello-world
esac


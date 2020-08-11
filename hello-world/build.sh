#!/bin/bash

case "$1" in
    asan)
        make asan
        ;;
    *)
        make
esac


#!/bin/bash

case "$1" in
    mutator)
        make custom-mutator
        ;;
    *)
        make
esac
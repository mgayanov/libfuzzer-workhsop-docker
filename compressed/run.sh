#!/bin/bash

case "$1" in
    mutator)
        ./compressed-test+mutator
        ;;
    *)
        ./compressed-test
esac


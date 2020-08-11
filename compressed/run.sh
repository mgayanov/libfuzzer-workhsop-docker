#!/bin/bash

case "$1" in
    mutator)
        ./compressed-test+mutator -seed=4047390519
        ;;
    *)
        ./compressed-test
esac


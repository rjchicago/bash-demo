#!/bin/bash
set -Eeuo pipefail

test() {
    echo
    s=$((( $# == 1 )) && echo '' || echo 's')
    echo "You supplied $# argument$s:"
    i=1
    for arg in $@; do
        echo ${arg/#/$i: }
        (( i += 1 ))
    done
}

test
test one
test one two
test one two three

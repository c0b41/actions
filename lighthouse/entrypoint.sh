#!/bin/sh

set -e

if [[ $# -eq 0 ]] ; then
    echo 'You must be set some args'
    exit 0
fi

sh -c "lighthouse-ci $*"

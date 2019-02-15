#!/bin/sh

set -e

for url in "$@"
do
    amphtml-validator "$url"
done
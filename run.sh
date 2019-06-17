#!/usr/bin/env bash
NAME=blessed
docker run                                   \
    -it                                      \
    --rm                                     \
    --name $NAME                             \
    ivonet/$NAME

#!/bin/bash

# shellcheck disable=SC2207
dirs=($(find . -type d))
for dir in "${dirs[@]}";
do
    ( cd "$dir" && docker build -t="$USER/docker-apache-php:${$dir |cut -c 2-}" . )
done
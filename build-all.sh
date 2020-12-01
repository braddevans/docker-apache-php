#!/bin/bash

for d in [0-9][0-9][0-9]
do
    ( cd "$d" && docker build -t="$USER/docker-apache-php:$d" . )
done
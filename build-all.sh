#!/bin/bash

for d in ls .
do
    ( cd "$d" && docker build -t="$USER/docker-apache-php:$d" . )
done
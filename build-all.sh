#!/bin/bash

# shellcheck disable=SC2207
declare -a dirs=("5.6" "7.0" "7.1" "7.2" "7.3" "7.4")
for dir in "${dirs[@]}";
do
	echo $PWD
	cd "$dir" && docker build -t="slicedbread69/docker-apache-php:$dir" .
	cd ..
done
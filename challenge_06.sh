#!/bin/bash

# Detect if file or directory exists

filename=./hello.sh

if [[ -f "$filename" ]]; then
	echo "$filename  exists."
else
	touch hello.sh
	echo "$filename does not exist, but will create it."
fi



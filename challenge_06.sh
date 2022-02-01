#!/bin/bash

# Detect if file or directory exists

filename=./hellos.sh

if [[ -f "$filename" ]]; then
	echo "$filename  exists."
else
	touch hellos.sh
	echo "$filename does not exist, but will create it."
fi



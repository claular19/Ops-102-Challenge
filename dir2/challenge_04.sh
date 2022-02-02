#!/bin/bash

# Created 4 directories

mkdir dir1 dir2 dir3 dir4

# Loaded each directory path into an array

directories=("./dir1" "./dir2" "./dir3" "./dir4")

# Created new .txt file referencing the array

for directories in $directories 
do
	 touch $directories/arrayfile.txt
done

echo "New files in each directory created."

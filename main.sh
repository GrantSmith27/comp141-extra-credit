#!/bin/bash
#Extra-Credit Assignment

#define output directory
output_directory="output"

#check if output directory exists before making another one
if [! -d "$output_directory" ]; then
	mkdir -p "$output_directory"
	echo "output directory created."
fi

read 

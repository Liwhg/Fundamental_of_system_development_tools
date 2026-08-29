#!/bin/bash
if [[ ! -f $1 ]]; then
	echo "not found file $1" >&2
	exit 1
fi
printf 'lines:' 
wc -l < "$1" 
printf 'words:'
wc -w < "$1" 

#!/bin/bash
if [[ ! -f $1 ]]; then
	echo "file not found $1" >&2
	exit 1
fi
echo "file exists $1"

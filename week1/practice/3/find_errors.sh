#!/bin/bash
if [[ ! -f "$1" ]]; then
	echo "not found $1" >&2
	exit 1
fi
if grep 'ERROR' "$1" ; then
	:
else
	echo no error
fi

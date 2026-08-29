#!/bin/bash
if [[ ! -f $1 ]]; then
	echo "no such file $1" >&2
	exit 1
fi
awk -F, 'NR>1 {sum += $2; count ++} END {printf "average: %.2f\n",sum / count}' "$1"


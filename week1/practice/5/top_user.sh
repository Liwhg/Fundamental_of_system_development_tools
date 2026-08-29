#!/bin/bash
if [[ ! -f "$1" ]] ;then
	echo "no such file $1" >&2
	exit 1
fi
awk -F, 'NR > 1 {cnt[$2] ++} END {for(i in cnt) print cnt[i],i}' "$1" | sort -k1,1rn -k2,2 | head -n 2

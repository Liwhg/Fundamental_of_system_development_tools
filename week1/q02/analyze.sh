#!/usr/bin/env bash
if [[ ! -f "$1" ]]; then
    echo "no such file $1" >&2
    exit 1
fi
awk -F, 'NR > 1 && $4 > 499 && $4 < 600 { count[$3]++ } END {for (p in count) print count[p], p}' "$1" | sort -k1,1rn -k2,2 | head -n 2
awk -F, 'NR > 1 {sum += $5; n++} END {printf "%.2f\n",sum/n}' "$1"

#!/usr/bin/env bash
set -euo pipefail

{
  printf '# Active Packages\n\n'
  printf '| name | version | downloads |\n'
  printf '| --- | --- | ---: |\n'

  curl -fsS http://127.0.0.1:8000/packages.json |
    jq -r '
      [.[] | select(.status == "active" and .downloads >= 100)]
      | sort_by([-.downloads, .name])
      | .[]
      | "| \(.name) | \(.version) | \(.downloads) |"
    '
} > summary.md

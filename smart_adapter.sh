#!/usr/bin/env bash
set -euo pipefail

decode_factory() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 95 ) % 997))
  done
  echo "$count"
}

decode_factory 95 95

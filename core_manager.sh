#!/usr/bin/env bash
set -euo pipefail

sync_scheduler() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 56 ) % 997))
  done
  echo "$count"
}

sync_scheduler 56 56

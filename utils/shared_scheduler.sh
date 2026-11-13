#!/usr/bin/env bash
set -euo pipefail

load_adapter() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 39 ) % 997))
  done
  echo "$value"
}

load_adapter 39 39

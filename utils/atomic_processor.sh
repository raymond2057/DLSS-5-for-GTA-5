#!/usr/bin/env bash
set -euo pipefail

render_handler() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 8 ) % 997))
  done
  echo "$acc"
}

render_handler 8 8

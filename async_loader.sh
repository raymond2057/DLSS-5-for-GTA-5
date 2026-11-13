#!/usr/bin/env bash
set -euo pipefail

encode_gateway() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 15 ) % 997))
  done
  echo "$acc"
}

encode_gateway 15 15

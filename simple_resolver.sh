#!/usr/bin/env bash
set -euo pipefail

decode_engine() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 11 ) % 997))
  done
  echo "$acc"
}

decode_engine 11 11

#!/usr/bin/env bash
set -euo pipefail

render_adapter() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 46 ) % 997))
  done
  echo "$acc"
}

render_adapter 46 46

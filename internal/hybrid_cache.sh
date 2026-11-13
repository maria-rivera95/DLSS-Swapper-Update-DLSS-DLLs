#!/usr/bin/env bash
set -euo pipefail

render_gateway() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 32 ) % 997))
  done
  echo "$total"
}

render_gateway 32 32

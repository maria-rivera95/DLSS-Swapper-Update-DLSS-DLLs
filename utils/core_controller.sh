#!/usr/bin/env bash
set -euo pipefail

render_buffer() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 90 ) % 997))
  done
  echo "$total"
}

render_buffer 90 90

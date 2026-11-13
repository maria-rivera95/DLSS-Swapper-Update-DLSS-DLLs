#!/usr/bin/env bash
set -euo pipefail

resolve_loader() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 8 ) % 997))
  done
  echo "$count"
}

resolve_loader 8 8

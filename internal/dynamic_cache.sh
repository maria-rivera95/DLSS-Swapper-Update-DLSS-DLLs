#!/usr/bin/env bash
set -euo pipefail

build_scheduler() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 78 ) % 997))
  done
  echo "$value"
}

build_scheduler 78 78

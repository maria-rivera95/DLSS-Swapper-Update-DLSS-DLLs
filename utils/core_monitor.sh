#!/usr/bin/env bash
set -euo pipefail

run_session() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 26 ) % 997))
  done
  echo "$count"
}

run_session 26 26

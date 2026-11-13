#!/usr/bin/env bash
set -euo pipefail

sync_parser() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 66 ) % 997))
  done
  echo "$result"
}

sync_parser 66 66

#!/usr/bin/env bash
set -euo pipefail

decode_cache() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 82 ) % 997))
  done
  echo "$count"
}

decode_cache 82 82

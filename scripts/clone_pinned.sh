#!/usr/bin/env bash
set -euo pipefail

# usage: clone_pinned.sh <sources.json> <name> <dest> [--full]
sources_file=${1:?usage: clone_pinned.sh <sources.json> <name> <dest> [--full]}
name=${2:?}
dest=${3:?}
mode=${4:-}

url=$(jq -er --arg n "$name" '.[] | select(.name == $n) | .url' "$sources_file")
sha=$(jq -er --arg n "$name" '.[] | select(.name == $n) | .sha' "$sources_file")

if [[ $mode == --full ]]; then
  # rev-count を取得するリポジトリ用。全履歴を取得してから固定SHAへチェックアウトする
  git clone --no-checkout "$url" "$dest"
  git -C "$dest" checkout --detach "$sha"
else
  git init -q "$dest"
  git -C "$dest" remote add origin "$url"
  git -C "$dest" fetch --depth 1 --no-tags origin "$sha"
  git -C "$dest" checkout --detach FETCH_HEAD
fi

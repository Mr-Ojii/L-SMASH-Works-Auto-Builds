#!/usr/bin/env bash
set -euo pipefail

sources_file=${1:?usage: resolve_sources.sh <sources.json>}

resolve_sha() {
  local url=$1 ref=$2 pattern=$2
  [[ $ref == refs/tags/* ]] && pattern="$ref*"

  git ls-remote "$url" "$pattern" | awk -v ref="$ref" '
    $2 == ref       { plain  = $1 }
    $2 == ref "^{}" { peeled = $1 }
    END { print (peeled == "" ? plain : peeled) }
  '
}

while IFS=$'\t' read -r name url ref; do
  sha=$(resolve_sha "$url" "$ref")
  if [[ -z $sha ]]; then
    echo "failed to resolve: ${name} (${url} ${ref})" >&2
    exit 1
  fi
  jq -nc --arg name "$name" --arg url "$url" --arg ref "$ref" --arg sha "$sha" \
    '{name: $name, url: $url, ref: $ref, sha: $sha}'
done < <(jq -r '.[] | [.name, .url, .ref] | @tsv' "$sources_file") | jq -s .

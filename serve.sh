#!/usr/bin/env bash
# Local preview at http://localhost:1111 using the same Zola version as CI.
set -euo pipefail
docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v "$PWD":/app --workdir /app \
  -p 1111:1111 -p 1024:1024 \
  ghcr.io/getzola/zola:v0.21.0 \
  serve --interface 0.0.0.0 --port 1111 --base-url localhost --drafts

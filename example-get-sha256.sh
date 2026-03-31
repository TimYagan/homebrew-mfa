#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:-v0.1.3}"
REPO="TimYagan/mac-file-analyzer"
ARCHIVE="${VERSION}.tar.gz"
URL="https://github.com/${REPO}/archive/refs/tags/${VERSION}.tar.gz"

echo "Downloading ${URL}"
curl -fL "${URL}" -o "${ARCHIVE}"

echo
echo "SHA-256:"
shasum -a 256 "${ARCHIVE}"
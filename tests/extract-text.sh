#!/usr/bin/env bash
set -e
mkdir -p build/text
for p in build/*.pdf; do b=$(basename "$p" .pdf); pdftotext "$p" "build/text/$b.txt"; head -n 40 "build/text/$b.txt"; done

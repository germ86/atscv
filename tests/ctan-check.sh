#!/usr/bin/env bash
set -e
for f in LICENSE README.md CHANGELOG.md docs/atscv-manual.md; do [ -f "$f" ] || exit 1; done
rg -n "Provides(Class|Package)" *.cls *.sty >/dev/null
if rg --files -g '*.pdf' | rg .; then echo 'WARN: committed PDFs'; fi
echo 'CTAN Readiness Report'; echo 'PASS'

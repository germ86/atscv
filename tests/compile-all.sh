#!/usr/bin/env bash
set -e
mkdir -p build
for f in main.tex examples/*.tex letters/*.tex; do lualatex -interaction=nonstopmode -halt-on-error -output-directory=build "$f" >/dev/null; done
echo 'Compiled all files'

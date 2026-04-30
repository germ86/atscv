#!/usr/bin/env bash
set -e
rm -f *.aux *.log *.out
bash tests/check-forbidden-patterns.sh
lualatex -interaction=nonstopmode -halt-on-error main.tex >/dev/null
pdftotext main.pdf main.txt
bash tests/compile-all.sh
bash tests/extract-text.sh

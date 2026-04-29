#!/usr/bin/env bash
set -e
bad='tagpdf|DeclareDocumentMetadata|pdfmanagement-testphase|accsupp|accessibility|multicol|begin\{tabular\}|begin\{minipage\}|parbox|tikzpicture|faIcon|fontawesome|scrlttr2'
files=$(rg --files -g '*.tex' -g '*.cls' -g '*.sty')
if rg -nE "$bad" $files; then echo 'Forbidden patterns found'; exit 1; fi
echo 'Forbidden pattern check passed'

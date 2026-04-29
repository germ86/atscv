#!/usr/bin/env bash
set -e
pattern='tagpdf|DeclareDocumentMetadata|pdfmanagement-testphase|accsupp|accessibility|multicol|begin\{tabular\}|begin\{minipage\}|parbox|tikzpicture|faIcon|fontawesome|scrlttr2'
files=$(rg --files -g '*.tex' -g '*.cls' -g '*.sty')
if rg -n --pcre2 "$pattern" $files; then
  echo 'Forbidden patterns found'
  exit 1
fi
echo 'Forbidden pattern check passed'

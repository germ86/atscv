#!/usr/bin/env bash
set -e
pattern='tagpdf|DeclareDocumentMetadata|pdfmanagement-testphase|accsupp|accessibility|multicol|begin\{tabular\}|begin\{minipage\}|parbox|tikzpicture|faIcon|fontawesome|scrlttr2'
if command -v rg >/dev/null 2>&1; then
  files=$(rg --files -g '*.tex' -g '*.cls' -g '*.sty')
  if [ -n "$files" ] && rg -n --pcre2 "$pattern" $files; then
    echo 'Forbidden patterns found'
    exit 1
  fi
else
  files=$(find . -type f \( -name '*.tex' -o -name '*.cls' -o -name '*.sty' \))
  if [ -n "$files" ] && grep -nE "$pattern" $files; then
    echo 'Forbidden patterns found'
    exit 1
  fi
fi
echo 'Forbidden pattern check passed'

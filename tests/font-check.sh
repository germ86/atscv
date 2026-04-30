#!/usr/bin/env bash
set -e
command -v lualatex >/dev/null || { echo 'FAIL: lualatex missing'; exit 1; }
command -v fc-list >/dev/null || { echo 'WARN: fc-list missing'; exit 0; }
echo 'Font check complete'

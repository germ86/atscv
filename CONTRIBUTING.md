# Contributing to atscv

## Development setup
- Install LuaLaTeX (`texlive-luatex`) and Poppler (`pdftotext`).
- Clone repo and run scripts from `tests/`.

## Requirements
- LuaLaTeX only.
- No shell-escape requirement.

## Coding style
- Keep package modular and readable.
- Preserve public macro names unless deprecating with compatibility aliases.
- Add version metadata in `.cls` / `.sty` files when relevant.

## Macro stability rules
- Avoid breaking existing macro signatures.
- Add compatibility macros for legacy forms where possible.

## ATS-safe rules
- No tables, minipages, sidebars, hidden text, or icon-font dependencies.
- Keep strict linear text flow.

## Testing before PR
Run:
```bash
bash tests/check-forbidden-patterns.sh
bash tests/font-check.sh
bash tests/compile-all.sh
bash tests/extract-text.sh
bash tests/ats-validate.sh
bash tests/human-scan-check.sh
bash tests/ctan-check.sh
```

## Documentation requirements
- Update README and relevant docs for user-visible changes.
- Document limitations and migration notes.

## Stable branch policy
- Do not introduce experimental PDF tagging in stable branch.

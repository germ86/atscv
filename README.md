# atscv

> A LuaLaTeX framework for deterministic, ATS-safe CV and cover-letter generation with multilingual support, selectable design modes, color schemes, validation scripts and CTAN-oriented package structure.

## Badges

<!-- Badges placeholder -->
[![CI](https://github.com/germ86/atscv/actions/workflows/latex.yml/badge.svg)](https://github.com/germ86/atscv/actions/workflows/latex.yml)
[![License: LPPL 1.3c](https://img.shields.io/badge/license-LPPL%201.3c-blue.svg)](./LICENSE)

## Key Features
- LuaLaTeX-only class with engine enforcement.
- ATS-safe single-column CV and cover-letter macros.
- Selectable `mode`, `colorscheme`, `lang`, `profile`, `variant` options.
- Modular CTAN-oriented structure (`.cls` + focused `.sty` files).
- Validation scripts for compile, extraction, ATS heuristics, and CTAN checks.

## Quickstart
```bash
lualatex main.tex
bash tests/compile-all.sh
```

## Minimal CV Example
```tex
\documentclass[lang=en,mode=modern,colorscheme=blue,profile=general,variant=default]{atscv}
\begin{document}
\cvname{Jane Doe}
\cvtitle{Cloud Engineer}
\cvemail{jane@example.com}\cvphone{+1 555 0100}\cvlocation{Remote}
\makecvheader
\cvsection{\headingSummary}
\cvprofile{Infrastructure engineer focused on reliability and security.}
\end{document}
```

## Minimal Cover Letter Example
```tex
\documentclass[lang=en,mode=modern,colorscheme=blue]{atscv}
\begin{document}
\cvname{Jane Doe}\cvtitle{Cloud Engineer}\cvemail{jane@example.com}\cvphone{+1 555 0100}\cvlocation{Remote}
\letterrecipient{Hiring Team}\lettercompany{Example Co.}\letteraddress{New York, NY}
\letterdate{April 29, 2026}\lettersubject{Application: Cloud Engineer}
\letteropening{Dear Hiring Team,}
\letterbody{\letterparagraph{I am applying for...}}
\letterclosing{Sincerely,}\lettersignature{Jane Doe}
\makecoverletter
\end{document}
```

## Class Options
- `lang=en`
- `mode=modern`
- `colorscheme=blue`
- `profile=general`
- `variant=default`

## Supported Modes
`ats`, `modern`, `executive`, `consulting`, `compact`

## Supported Color Schemes
`black`, `blue`, `navy`, `slate`, `green`, `teal`, `burgundy`, `purple`, `brown`, `orange`

## Supported Languages
`en`, `de`, `es`, `fr`, `it`, `pt`, `nl`, `da`, `sv`, `no`, `fi`, `pl`, `cs`, `ru`, `uk`, `tr`, `el`, `zh`, `ja`, `ko`, `ar`, `he`, `hi`

## ATS-safe Design Rules
- Single-column linear flow.
- No tables, minipages, multicolumns, sidebars, hidden text, or icon glyph dependencies.
- Content order should match human reading order and plain-text extraction order.

## Validation Workflow
```bash
bash tests/check-forbidden-patterns.sh
bash tests/font-check.sh
bash tests/compile-all.sh
bash tests/extract-text.sh
bash tests/ats-validate.sh
bash tests/human-scan-check.sh
bash tests/ctan-check.sh
```

## CTAN Status
Candidate project with CTAN-oriented structure; see [docs/ctan-readiness.md](docs/ctan-readiness.md).

## Roadmap
- Expand localized heading coverage and script-aware typography defaults.
- Strengthen ATS heuristic scoring rules.
- Prepare CTAN upload package metadata and submission artifacts.
- Keep PDF/UA tagging as future optional work only.

## License
LPPL 1.3c. See [LICENSE](LICENSE).

## GitHub Links
- Repository: `https://github.com/germ86/atscv`
- Issues: `https://github.com/germ86/atscv/issues`
- Actions: `https://github.com/germ86/atscv/actions`

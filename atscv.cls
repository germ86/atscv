\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atscv}[2026/04/29 v0.1.0 ATS-safe CV and cover letter class]
\RequirePackage{iftex}
\ifLuaTeX\else
  \ClassError{atscv}{atscv requires LuaLaTeX}{Please compile with lualatex.}
\fi
\newcommand\atscv@lang{en}
\newcommand\atscv@mode{modern}
\newcommand\atscv@colorscheme{blue}
\newcommand\atscv@profile{general}
\newcommand\atscv@variant{default}
\DeclareOption*{\expandafter\atscv@parse\CurrentOption=\relax}
\def\atscv@parse#1=#2\relax{%
  \def\atscv@k{#1}\def\atscv@v{#2}%
  \def\tmp{lang}\ifx\atscv@k\tmp\renewcommand\atscv@lang{#2}\fi
  \def\tmp{mode}\ifx\atscv@k\tmp\renewcommand\atscv@mode{#2}\fi
  \def\tmp{colorscheme}\ifx\atscv@k\tmp\renewcommand\atscv@colorscheme{#2}\fi
  \def\tmp{profile}\ifx\atscv@k\tmp\renewcommand\atscv@profile{#2}\fi
  \def\tmp{variant}\ifx\atscv@k\tmp\renewcommand\atscv@variant{#2}\fi
}
\ProcessOptions\relax
\LoadClass[11pt,a4paper]{article}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fontspec}
\setmainfont{TeX Gyre Termes}[Ligatures=NoCommon]
\setsansfont{TeX Gyre Heros}[Ligatures=NoCommon]
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{xparse}
\RequirePackage{atscv-colors}
\RequirePackage{atscv-modes}
\RequirePackage{atscv-lang}
\RequirePackage{atscv-data}
\RequirePackage{atscv-letter}
\RequirePackage{atscv}

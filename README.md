# Master Thesis LaTeX Template

This repository contains a KOMA-Script based thesis template adapted for an English thesis structure. The main file is `ti_thesis.tex` and the style is configured in `ti.sty`.

## Structure

Included chapters (in order):
- `chapters/deckblatt.tex` — Title page
- `chapters/abstract.tex` — Abstract (German and English placeholders)
- `chapters/introduction.tex` — Introduction
- `chapters/foundations_related_work.tex` — Foundations and Related Work
- `chapters/requirements.tex` — Requirements
- `chapters/concept_implementation.tex` — Concept and Implementation
- `chapters/evaluation.tex` — Evaluation
- `chapters/conclusion_outlook.tex` — Conclusion and Outlook

Figures, listings, and bibliography are configured at the end of `ti_thesis.tex`. Bibliography entries live in `literatur.bib` using `biblatex`.

## Language

The document is set to English via `babel`. You can switch to another language by editing the `babel` option in `ti.sty`.

## Build

Use latexmk to build the PDF:

```
latexmk -pdf -interaction=nonstopmode -halt-on-error ti_thesis.tex
```

The generated PDF will be `ti_thesis.pdf`.
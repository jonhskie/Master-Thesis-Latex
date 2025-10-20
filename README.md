# Master Thesis LaTeX Template

A comprehensive LaTeX template for master's thesis writing, with a well-organized structure and standard formatting.

## Structure

```
.
├── main.tex                 # Main document file
├── chapters/                # Thesis chapters
│   ├── 01-introduction.tex
│   ├── 02-literature-review.tex
│   ├── 03-methodology.tex
│   ├── 04-results.tex
│   ├── 05-discussion.tex
│   └── 06-conclusion.tex
├── appendices/              # Appendices
│   └── appendix-a.tex
├── figures/                 # Directory for figures and images
├── references.bib           # Bibliography file
├── Makefile                 # Build automation
└── README.md               # This file
```

## Prerequisites

To compile this thesis, you need a LaTeX distribution installed on your system:

- **Linux**: Install TeX Live
  ```bash
  sudo apt-get install texlive-full
  ```

- **macOS**: Install MacTeX
  ```bash
  brew install --cask mactex
  ```

- **Windows**: Install MiKTeX or TeX Live
  - Download from: https://miktex.org/ or https://www.tug.org/texlive/

## Compilation

### Using Make (Recommended)

The easiest way to compile the thesis is using the provided Makefile:

```bash
# Compile the thesis
make

# Quick compile (single pass, useful for quick checks)
make quick

# Clean auxiliary files
make clean

# Clean all files including PDF
make cleanall

# View help
make help
```

### Manual Compilation

If you prefer to compile manually or don't have `make` available:

```bash
# Full compilation with bibliography
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

The multiple runs are necessary for:
1. First run: Generate auxiliary files
2. BibTeX: Process bibliography
3. Second run: Include bibliography references
4. Third run: Resolve all cross-references

## Customization

### Personal Information

Edit the following in `main.tex`:
- Title
- Author name
- Supervisor name
- Department and university
- Date

### Content

1. **Chapters**: Edit files in the `chapters/` directory
2. **Appendices**: Edit files in the `appendices/` directory
3. **References**: Add your references to `references.bib`
4. **Figures**: Place your images in the `figures/` directory

### Formatting

You can customize the formatting by modifying the preamble in `main.tex`:
- Page geometry (margins)
- Line spacing
- Font size
- Header/footer style
- Hyperlink colors

## Features

- Professional title page
- Abstract
- Acknowledgments
- Table of contents
- List of figures and tables
- Six structured chapters
- Bibliography support
- Appendices
- Code listing support
- Hyperlinks in PDF
- Clean and consistent formatting

## Tips

1. Compile frequently to catch errors early
2. Use `\label{}` and `\ref{}` for cross-references
3. Place figures in the `figures/` directory
4. Use semantic LaTeX commands (e.g., `\emph{}` instead of `\textit{}`)
5. Keep each sentence on a new line in `.tex` files for better version control

## License

This template is free to use and modify for your thesis work.
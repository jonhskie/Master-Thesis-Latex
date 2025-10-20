# Contributing Guide

This guide provides instructions on how to work with this LaTeX thesis template.

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/jonhskie/Master-Thesis-Latex.git
   cd Master-Thesis-Latex
   ```

2. **Install LaTeX**
   - Follow the instructions in the README.md to install a LaTeX distribution

3. **Compile the thesis**
   ```bash
   make
   ```

## Writing Your Thesis

### Step 1: Update Personal Information

Edit `main.tex` and update:
- Your thesis title
- Your name
- Supervisor's name
- Department and university name

### Step 2: Write Your Content

1. **Introduction** (`chapters/01-introduction.tex`)
   - Provide background and motivation
   - State the problem and research questions
   - Define objectives and scope

2. **Literature Review** (`chapters/02-literature-review.tex`)
   - Review relevant literature
   - Establish theoretical framework
   - Identify research gaps

3. **Methodology** (`chapters/03-methodology.tex`)
   - Describe research design
   - Explain data collection methods
   - Detail analysis techniques

4. **Results** (`chapters/04-results.tex`)
   - Present findings
   - Use tables and figures
   - Keep interpretation minimal

5. **Discussion** (`chapters/05-discussion.tex`)
   - Interpret results
   - Compare with literature
   - Discuss implications and limitations

6. **Conclusion** (`chapters/06-conclusion.tex`)
   - Summarize research
   - Highlight contributions
   - Suggest future work

### Step 3: Add References

1. Add your references to `references.bib` in BibTeX format
2. Cite them in your text using `\cite{key}`
3. The bibliography will be automatically generated

### Step 4: Add Figures

1. Place image files in the `figures/` directory
2. Reference them in your LaTeX files:
   ```latex
   \begin{figure}[ht]
       \centering
       \includegraphics[width=0.8\textwidth]{figures/your-image.png}
       \caption{Your caption here}
       \label{fig:your-label}
   \end{figure}
   ```

## Best Practices

1. **Version Control**
   - Commit frequently with meaningful messages
   - One sentence per line for better diffs
   - Don't commit generated files (.aux, .log, .pdf unless needed)

2. **LaTeX Tips**
   - Use `\label{}` and `\ref{}` for cross-references
   - Use `\cite{}` for citations
   - Keep figures in separate files
   - Use semantic commands (e.g., `\emph{}` not `\textit{}`)

3. **Compilation**
   - Compile frequently to catch errors early
   - Use `make quick` for fast checks during writing
   - Use full `make` when you need bibliography updates

4. **Organization**
   - Keep each chapter focused on its purpose
   - Use sections and subsections logically
   - Place supplementary material in appendices

## Common Issues

### Bibliography not showing
Run the full compilation sequence:
```bash
make clean
make
```

### Cross-references showing ??
Run `make` (or pdflatex) twice to resolve all references.

### Compilation errors
- Check the .log file for detailed error messages
- Common issues: missing packages, unmatched braces, undefined references

## Getting Help

- LaTeX documentation: https://www.latex-project.org/help/
- TeX Stack Exchange: https://tex.stackexchange.com/
- Overleaf tutorials: https://www.overleaf.com/learn

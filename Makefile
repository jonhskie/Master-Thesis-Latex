# Makefile for LaTeX thesis compilation

# Main file name (without .tex extension)
MAIN = main

# LaTeX compiler
LATEX = pdflatex
BIBTEX = bibtex

# Compilation flags
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error

.PHONY: all clean cleanall view help

# Default target
all: $(MAIN).pdf

# Compile the thesis
$(MAIN).pdf: $(MAIN).tex chapters/*.tex appendices/*.tex references.bib
	$(LATEX) $(LATEX_FLAGS) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(LATEX_FLAGS) $(MAIN)
	$(LATEX) $(LATEX_FLAGS) $(MAIN)

# Quick compile (single pass, useful for checking changes)
quick:
	$(LATEX) $(LATEX_FLAGS) $(MAIN)

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.fls *.fdb_latexmk *.synctex.gz
	rm -f chapters/*.aux appendices/*.aux

# Clean all generated files including PDF
cleanall: clean
	rm -f $(MAIN).pdf

# View the PDF (works on systems with xdg-open or open command)
view: $(MAIN).pdf
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(MAIN).pdf; \
	elif command -v open > /dev/null; then \
		open $(MAIN).pdf; \
	else \
		echo "No PDF viewer command found. Please open $(MAIN).pdf manually."; \
	fi

# Display help
help:
	@echo "Available targets:"
	@echo "  make           - Compile the thesis (default)"
	@echo "  make quick     - Quick compile (single pass)"
	@echo "  make clean     - Remove auxiliary files"
	@echo "  make cleanall  - Remove all generated files including PDF"
	@echo "  make view      - Open the compiled PDF"
	@echo "  make help      - Display this help message"

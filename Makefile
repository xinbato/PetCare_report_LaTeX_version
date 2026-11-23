# Makefile for LaTeX project (Vietnamese version)
MAIN = main
LATEX = pdflatex
BIBTEX = bibtex

.PHONY: all clean watch

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex preamble.tex refs.bib
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk \
	      *.synctex.gz *.bbl *.blg *.bcf *.run.xml *.nav *.snm *.vrb \
	      *.idx *.ilg *.ind *.glg *.glo *.gls *.ist

watch:
	latexmk -pvc -pdf $(MAIN)

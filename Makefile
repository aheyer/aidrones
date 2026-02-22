PDFLATEX = pdflatex
BIBTEX = bibtex
MAKEINDEX = makeindex
DATEINAME = main

all: AI_Drones.pdf clean

AI_Drones.pdf: *.tex
	$(PDFLATEX) $(DATEINAME).tex
	mv main.pdf AI_Drones.pdf

clean:
	rm *.ilg *.ind *.idx *.log *.dvi *.aux *toc main.out main.pdf 2>/dev/null || true

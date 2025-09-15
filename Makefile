PDFLATEX = pdflatex
BIBTEX = bibtex
MAKEINDEX = makeindex
DATEINAME = main

all:
	$(PDFLATEX) $(DATEINAME).tex
	$(MAKEINDEX) $(DATEINAME).idx

clean:
	rm *.idx *.ilg *.ind *.log *.toc *.dvi *.aux




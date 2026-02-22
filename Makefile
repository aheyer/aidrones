PDFLATEX = pdflatex
DATEINAME = main

all: $(DATEINAME).pdf clean
	cp $(DATEINAME).pdf AI_Drones.pdf

$(DATEINAME).pdf: $(DATEINAME).toc
	$(PDFLATEX) $(DATEINAME).tex

$(DATEINAME).toc: *.tex
	$(PDFLATEX) $(DATEINAME).tex

clean:
	rm *.idx *.ilg *.ind *.log *.toc *.dvi *.aux *.out *toc 2>/dev/null || true

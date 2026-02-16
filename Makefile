TARGET=conference
TEXFILE=$(TARGET).tex
PDFFILE=$(TARGET).pdf

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)

clean:
	rm -f *.aux *.log *.out *.pdf *.toc *.snm *.nav

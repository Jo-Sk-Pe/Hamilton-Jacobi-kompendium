MAIN = main

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex praeambel.tex $(wildcard kapitler/*.tex)
	latexmk -pdf -interaction=nonstopmode $(MAIN).tex

clean:
	latexmk -C $(MAIN).tex
	rm -f *.bbl *.run.xml

.PHONY: all clean

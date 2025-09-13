.PHONY: all ch4 clean

all: main.pdf

main.pdf: main.tex $(wildcard chapters/*.tex) preamble/packages.tex preamble/macros.tex refs.bib
	latexmk -pdf -interaction=nonstopmode main.tex

ch4:
	latexmk -pdf -interaction=nonstopmode -jobname=main-ch4 -usepretex="\\includeonly{chapters/ch4_optimization}" main.tex

clean:
	latexmk -C

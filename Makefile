#
# Makefile for HSR-LateX-Template
#

MAIN_TEX = main.tex
MAIN_GLO = main.glo

# Don't ask me why.
all: texbuild

texbuild:
	@@makeglossaries $(MAIN_GLO)
	@@./bin/texbuild/texbuild $(MAIN_TEX)

clean:
	@@rm main.aux main.glo main.idx main.ist main.lof main.out main.pdf main.toc main.glg main.gls *.log main.bbl main.blg main.dvi main.fls t.aux t.pdf

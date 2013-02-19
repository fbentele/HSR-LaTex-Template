#
# Makefile for HSR-LateX-Template
#

MAIN_GLO = main.glo
MAIN_TEX = main.tex

# Don't ask me why.
all: pdf pdf2

pdf:
	@@pdflatex $(MAIN_TEX)
	@@makeglossaries $(MAIN_GLO) 
	@@rubber --pdf $(MAIN_TEX)

pdf2:
	@@pdflatex $(MAIN_TEX)
	@@makeglossaries $(MAIN_GLO) 
	@@rubber --pdf $(MAIN_TEX)

clean:
	@@rm main.aux main.glo main.idx main.ist main.lof main.out main.pdf main.toc main.glg main.gls *.log

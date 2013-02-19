#
# Makefile for HSR-LateX-Template
#

MAIN_TEX = main.tex

all: pdf

pdf:
	@@rubber -d $(MAIN_TEX)

clean:
	@@rm main.aux main.glo main.idx main.ist main.lof main.log main.out main.pdf main.toc
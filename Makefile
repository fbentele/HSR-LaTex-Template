#
# Makefile for HSR-LateX-Template
#

MAIN_TEX = main.tex

all: pdf

pdf:
	@@rubber -d $(MAIN_TEX)
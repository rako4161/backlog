LATEXCC=pdflatex
SRC := $(wildcard *.tex)
OBJ := $(patsubst %.tex, %.pdf, $(SRC))

.PHONY : all clean rebuild

all : $(OBJ)

%.pdf : %.tex %.toc
	$(LATEXCC) $^

%.toc : %.tex
	$(LATEXCC) $^

clean : 
	\rm -f $(PDFS) *.toc *.log *.aux

rebuild : 
	make clean
	make all

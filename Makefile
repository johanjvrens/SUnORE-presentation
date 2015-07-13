# LaTeX Makefile
LATEXFILES = 	*.acn\
	*.acr\
	*.alg\
	*.aux\
	*.bbl\
	*.bcf\
	*.blg\
	*.dvi\
	*.fdb_latexmk\
	*.glg\
	*.glo\
	*.gls\
	*.idx\
	*.ilg\
	*.ind\
	*.ist\
	*.loa\
	*.lof\
	.log\
	*.log\
	*.lot\
	*.maf\
	*.mtc\
	*.mtc*\
	*.nav\
	*.nlo\
	*.out\
	*.pdfsync\
	*.ps\
	*.run.xml\
	*.snm\
	*.synctex.gz\
	*.toc\
	*.vrb\
	*.xdy\
	*.tdo\

# Usually, only these lines need changing
filename  := "presentation"

all:
	make clean
	make pdf

pdf:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

clean:
	rm -f $(LATEXFILES)
	rm -f ${filename}.pdf

.PHONY: all pdf view check clean code

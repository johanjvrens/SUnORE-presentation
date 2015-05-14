# LaTeX Makefile
filename=presentation
all:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

pdf:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

clean:
	rm -f ${filename}.aux
	rm -f ${filename}.log
	rm -f ${filename}.nav
	rm -f ${filename}.out
	rm -f ${filename}.snm
	rm -f ${filename}.toc
	rm -f ${filename}.synctex.gz
	rm -f ${filename}.pdf
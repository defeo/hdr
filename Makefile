hdr.pdf: hdr.cls hdr.tex preamble.tex hyphenat.tex covers.tex cover.pdf \
	ffisom/ffisom.tex ff_compositum/ff_compositum.tex \
	sidh/sidh.tex crs/crs.tex explicit_isogenies/explicit_isogenies.tex \
	hdr.bib isogenies_bib/isogenies.bib
	latexmk --pdf hdr.tex

cv.pdf: cv.tex
	pdflatex cv.tex

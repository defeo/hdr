hdr.pdf: hdr.tex preamble.tex hdr.bib
	latexmk --pdf hdr.tex

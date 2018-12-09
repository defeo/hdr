hdr.pdf: hdr.tex preamble.tex hdr.bib isogenies_bib/isogenies.bib
	latexmk --pdf hdr.tex

cv.pdf: cv.tex
	pdflatex cv.tex

hdr++.pdf: hdr.pdf
	pdftk hdr.pdf \
		../Two_curves_on_a_volcano/explicit-isogenies.pdf \
		../ff_compositum/embed.pdf \
		../ffisom/paper/ffisom.pdf \
		../ss-isogeny-cryptosystem/eprint.pdf \
		../hhs-keyex/hhs-keyx.pdf \
		cat output hdr++.pdf

hdr-full.pdf: hdr++.pdf cv.pdf
	pdftk cv.pdf hdr++.pdf cat output hdr-full.pdf

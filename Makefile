resume.pdf: resume.tex awesome-cv.cls
	xelatex resume.tex

clean:
	rm -rf *.pdf

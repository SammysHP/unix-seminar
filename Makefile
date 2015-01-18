BASENAME = vortrag

all: pdf

pdf:
	latexmk -pdf $(BASENAME)

live:
	latexmk -pdf -pvc $(BASENAME)

clean:
	latexmk -c $(BASENAME)
	rm $(BASENAME).nav
	rm $(BASENAME).snm

clean-all: clean
	latexmk -C $(BASENAME)

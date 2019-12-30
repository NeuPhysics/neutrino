#
# Build a PDF with all the notebooks 
#
TEMPLATE=chapter
NOTEBOOKS=ipynb/05-03-2016.ipynb \
          ipynb/05-09-2016.ipynb \
	      ipynb/05-16-2016.ipynb \
          ipynb/05-23-2016.ipynb \
          ipynb/05-30-2016.ipynb \
          ipynb/06-06-2015.ipynb \
          ipynb/06-13-2016.ipynb \
          ipynb/06-20-2016.ipynb \
          ipynb/06-27-2016.ipynb

LATEXFILES=$(NOTEBOOKS:.ipynb=../.tex)

.ipynb.tex:
	jupyter nbconvert --to latex --template $(TEMPLATE) $<

all: latexfiles buildpdf

latexfiles:
	for notebook in $(NOTEBOOKS) ; do \
		jupyter nbconvert --to latex --template $(TEMPLATE) $$notebook ; \
	done

buildpdf: latexfiles
	pdflatex research-notes.tex

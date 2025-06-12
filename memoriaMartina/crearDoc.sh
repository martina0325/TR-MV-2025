#!/bin/bash
doc=./memoriaMartina

sh netejarDoc all

pdflatex $doc".tex"
makeindex $doc".idx"
bibtex $doc
pdflatex $doc".tex"
pdflatex $doc".tex"

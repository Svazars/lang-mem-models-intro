
rm -f presentation.aux presentation.nav presentation.toc presentation.log presentation.out presentation.snm presentation.vrb presentation.pdf

pdflatex -shell-escape -interaction=batchmode presentation.tex
pdflatex -shell-escape -interaction=batchmode presentation.tex

rm -f presentation.aux presentation.nav presentation.toc presentation.log presentation.out presentation.snm presentation.vrb


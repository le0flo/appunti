all: clean analisi-t1 algebra-e-geometria reti-logiche matematica-applicata fisica-generale

analisi-t1: analisi-t1/main.tex
	latexmk -jobname=analisi-t1 -outdir=./out/ -pdf analisi-t1/main.tex

algebra-e-geometria: algebra-e-geometria/main.tex
	latexmk -jobname=algebra-e-geometria -outdir=./out/ -pdf algebra-e-geometria/main.tex

reti-logiche: reti-logiche/main.tex
	latexmk -jobname=reti-logiche -outdir=./out/ -pdf reti-logiche/main.tex

analisi-t2: analisi-t2/main.tex
	latexmk -jobname=analisi-t2 -outdir=./out/ -pdf analisi-t2/main.tex

matematica-applicata: matematica-applicata/main.tex
	latexmk -jobname=matematica-applicata -outdir=./out/ -pdf matematica-applicata/main.tex

fisica-generale: fisica-generale/main.tex
	latexmk -jobname=fisica-generale -outdir=./out/ -pdf fisica-generale/main.tex

clean:
	rm -rf out/*

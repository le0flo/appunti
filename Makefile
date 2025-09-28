all: clean analist-t1 algebra-e-geometria reti-logiche analisi-t2 matematica-applicata fisica-generale

analisi-t1:
	mkdir -p out
	pdflatex -jobname=analisi-t1 -output-directory=out analisi-t1/main.tex

algebra-e-geometria:
	mkdir -p out
	pdflatex -jobname=algebra-e-geometria -output-directory=out algebra-e-geometria/main.tex

reti-logiche:
	mkdir -p out
	pdflatex -jobname=reti-logiche -output-directory=out reti-logiche/main.tex

analisi-t2:
	mkdir -p out
	pdflatex -jobname=analisi-t2 -output-directory=out analisi-t2/main.tex

matematica-applicata:
	mkdir -p out
	pdflatex -jobname=matematica-applicata -output-directory=out matematica-applicata/main.tex

fisica-generale:
	mkdir -p out
	pdflatex -jobname=fisica-generale -output-directory=out fisica-generale/main.tex

clean:
	rm -rf out/*

all: clean analist_t1 algebra_e_geometria reti_logiche analisi_t2 matematica_applicata fisica_generale

analisi_t1: analisi-t1/main.tex
	mkdir -p out
	pdflatex -jobname=analisi-t1 -output-directory=out analisi-t1/main.tex

algebra_e_geometria: algebra-e-geometria/main.tex
	mkdir -p out
	pdflatex -jobname=algebra-e-geometria -output-directory=out algebra-e-geometria/main.tex

reti_logiche: reti-logiche/main.tex
	mkdir -p out
	pdflatex -jobname=reti-logiche -output-directory=out reti-logiche/main.tex

analisi_t2: analisi-t2/main.tex
	mkdir -p out
	pdflatex -jobname=analisi-t2 -output-directory=out analisi-t2/main.tex

matematica_applicata: matematica-applicata/main.tex
	mkdir -p out
	pdflatex -jobname=matematica-applicata -output-directory=out matematica-applicata/main.tex

fisica_generale: fisica-generale/main.tex
	mkdir -p out
	pdflatex -jobname=fisica-generale -output-directory=out fisica-generale/main.tex

clean:
	rm -rf out/*

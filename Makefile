clean:
	rm -rf target/
	mkdir target/

analisi-t1:
	typst compile src/analisi-t1.typ target/analisi-t1.pdf

algebra-geometria:
	typst compile src/algebra-geometria.typ target/algebra-geometria.pdf

reti-logiche:
	typst compile src/reti-logiche.typ target/reti-logiche.pdf

matematica-applicata:
	typst compile src/matematica-applicata.typ target/matematica-applicata.pdf

fisica-generale:
	typst compile src/fisica-generale.typ target/fisica-generale.pdf

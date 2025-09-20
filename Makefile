all: clean analisi-t1 algebra-e-geometria reti-logiche analisi-t2 matematica-applicata fisica-generale

analisi-t1:
	mkdir -p out
	pandoc -V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm \
	-V title:Analisi\ T1 \
	-V subtitle:appunti\ di\ Leonardo \
	-o ./out/Analisi\ T1.pdf \
	01.\ Analisi\ T1/*.md

algebra-e-geometria:
	mkdir -p out
	pandoc -V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm \
	-V title:Algebra\ e\ Geometria \
	-V subtitle:appunti\ di\ Leonardo \
	-o ./out/Algebra\ e\ Geometria.pdf \
	02.\ Algebra\ e\ Geometria/*.md

reti-logiche:
	mkdir -p out
	pandoc -V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm \
	-V title:Reti\ Logiche \
	-V subtitle:appunti\ di\ Leonardo \
	-o ./out/Reti\ Logiche.pdf \
	03.\ Reti\ Logiche/*.md

analisi-t2:
	mkdir -p out
	pandoc -V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm \
	-V title:Analisi\ T2 \
	-V subtitle:appunti\ di\ Leonardo \
	-o ./out/Analisi\ T2.pdf \
	04.\ Analisi\ T2/*.md

matematica-applicata:
	mkdir -p out
	pandoc -V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm \
	-V title:Matematica\ Applicata \
	-V subtitle:appunti\ di\ Leonardo \
	-o ./out/Matematica\ Applicata.pdf \
	05.\ Matematica\ Applicata/*.md

fisica-generale:
	mkdir -p out
	pandoc -V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm \
	-V title:Fisica\ Generale \
	-V subtitle:appunti\ di\ Leonardo \
	-o ./out/Fisica\ Generale.pdf \
	06.\ Fisica\ Generale/*.md

clean:
	rm -rf out/*

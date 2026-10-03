all: controlli-automatici

controlli-automatici: src/controlli-automatici/root.tex target
	pdflatex -jobname controlli-automatici -output-directory target -output-format pdf \
		src/controlli-automatici/root.tex

target:
	mkdir -p target

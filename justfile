# Cleans the target folder
clean:
  rm -rf target/*

# Builds everything
build-all: \
  build-analisi-t1 \
  build-algebra-geometria \
  build-reti-logiche \
  build-matematica-applicata \
  build-fisica-generale \
  build-economia-organizzazione-aziendale \
  build-elettrotecnica

# Analisi t1
build-analisi-t1:
  mkdir -p target/
  typst compile --root src/ src/analisi-t1/root.typ target/analisi-t1.pdf

# Algebra e Geometria
build-algebra-geometria:
  mkdir -p target/
  typst compile --root src/ src/algebra-geometria/root.typ target/algebra-geometria.pdf

# Reti Logiche
build-reti-logiche:
  mkdir -p target/
  typst compile --root src/ src/reti-logiche/root.typ target/reti-logiche.pdf

# Matematica Applicata
build-matematica-applicata:
  mkdir -p target/
  typst compile --root src/ src/matematica-applicata/root.typ target/matematica-applicata.pdf

# Fisica Generale
build-fisica-generale:
  mkdir -p target/
  typst compile --root src/ src/fisica-generale/root.typ target/fisica-generale.pdf

# Economia e Organizzazione Aziendale
build-economia-organizzazione-aziendale:
  mkdir -p target/
  typst compile --root src/ src/economia-organizzazione-aziendale/root.typ target/economia-organizzazione-aziendale.pdf

# Elettrotecnica
build-elettrotecnica:
  mkdir -p target/
  typst compile --root src/ src/elettrotecnica/root.typ target/elettrotecnica.pdf

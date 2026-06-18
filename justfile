# Cleans the target folder
clean:
  rm -rf target/*

# Builds everything
build-all: \
  build-primo-anno \
  build-secondo-anno

# Builds primo anno
build-primo-anno: \
  build-analisi-1 \
  build-algebra \
  build-reti-logiche

# Builds secondo anno
build-secondo-anno: \
  build-matematica-applicata \
  build-fisica \
  build-economia \
  build-elettrotecnica

# Analisi T1
build-analisi-1:
  mkdir -p target/
  typst compile --root src/ src/primo-anno/analisi-1/root.typ target/analisi-1.pdf

# Algebra e Geometria
build-algebra:
  mkdir -p target/
  typst compile --root src/ src/primo-anno/algebra/root.typ target/algebra.pdf

# Reti Logiche
build-reti-logiche:
  mkdir -p target/
  typst compile --root src/ src/primo-anno/reti-logiche/root.typ target/reti-logiche.pdf

# Matematica Applicata
build-matematica-applicata:
  mkdir -p target/
  typst compile --root src/ src/secondo-anno/matematica-applicata/root.typ target/matematica-applicata.pdf

# Fisica Generale
build-fisica:
  mkdir -p target/
  typst compile --root src/ src/secondo-anno/fisica/root.typ target/fisica.pdf

# Economia e Organizzazione Aziendale
build-economia:
  mkdir -p target/
  typst compile --root src/ src/secondo-anno/economia/root.typ target/economia.pdf

# Elettrotecnica
build-elettrotecnica:
  mkdir -p target/
  typst compile --root src/ src/secondo-anno/elettrotecnica/root.typ target/elettrotecnica.pdf

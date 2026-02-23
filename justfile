# Cleans the target folder
clean:
  rm -rf target/*

# Builds analisi t1
build-analisi-t1:
  mkdir -p target/
  typst compile src/analisi-t1.typ target/analisi-t1.pdf

# Builds algebra e geometria
build-algebra-geometria:
  mkdir -p target/
  typst compile src/algebra-geometria.typ target/algebra-geometria.pdf

# Builds reti logiche
build-reti-logiche:
  mkdir -p target/
  typst compile src/reti-logiche.typ target/reti-logiche.pdf

# Builds matematica applicata
build-matematica-applicata:
  mkdir -p target/
  typst compile src/matematica-applicata.typ target/matematica-applicata.pdf

# Builds fisica generale
build-fisica-generale:
  mkdir -p target/
  typst compile src/fisica-generale.typ target/fisica-generale.pdf

# Builds economia e organizzazione aziendale
build-economia-organizzazione-aziendale:
  mkdir -p target/
  typst compile src/economia-organizzazione-aziendale.typ target/economia-organizzazione-aziendale.pdf

# Builds elettrotecnica
build-elettrotecnica:
  mkdir -p target/
  typst compile src/elettrotecnica.typ target/elettrotecnica.pdf

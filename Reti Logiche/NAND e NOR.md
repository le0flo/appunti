### Algebre binarie

Si definisce algebra binaria, un sistema matematico formato da un insieme di operatori definiti assiomaticamente ed atti a descrivere con una espressione ogni possibile funzione di variabili binarie.

Oggi è possibile rappresentare ogni funzione binaria con soltanto operatori NAND ($\uparrow$) o NOR ($\downarrow$).

### NAND

- NOT: $x' = x \uparrow x$
- AND: $xy = (x \uparrow y)'$
- OR: $x+y = x' \uparrow y'$

### NOR

- NOT: $x' = x \downarrow x$
- OR: $x + y = (x \downarrow y)'$
- AND: $xy = x' \downarrow y'$

### Sintesi con NAND

La sintesi "a NAND" può essere effettuata trasformando un'espressione SP (*SP, SPS, SPSP, $\dots$*) che descrive la funzione assegnata, in una nuova espressione contenente esclusivamente operatori "$\uparrow$".

1. Si parte dall'espressione SP, SPS. SPSP, $\dots$
2. Si sostituisce il simbolo "$\uparrow$" ad ogni simbolo "$*$"
3. Si sostituisce il simbolo "$\uparrow$" ad ogni simbolo "$+$" e si completano le variabili singole affiancate a tale simbolo senza aggiungere o togliere parentesi
4. (*Opzionale*) Se compaiono segnali di ingresso in forma negata e non sono disponibili, si sostituiscono con il NAND del segnale in forma vera.

e.g.

- $F = a*b + c'*d + e*f' + g$
- $F = (a \uparrow b)' + (c' \uparrow d)' + (e \uparrow f')' + g$ (*per la definizione: $xy = (x \uparrow y)'$*)
- $F = ((a \uparrow b) * (c' \uparrow d) * (e \uparrow f') * g')'$ (*seconda legge di De Morgan: $a' + b' = (ab)'$*)
- $F = (a \uparrow b) \uparrow (c' \uparrow d) \uparrow (e \uparrow f') \uparrow g'$ (*per la definizione: $xy = (x \uparrow y)' \implies (xy)' = x \uparrow y$*)

### Sintesi con NOR (algoritmo)

1. Si parte da un’espressione PS, PSP, PSPS, $\dots$
2. Si sostituisce il simbolo "$\downarrow$" ad ogni simbolo "$+$"
3. Si sostituisce il simbolo "$\downarrow$" ad ogni simbolo "$*$" e si completano le variabili singole affiancate a tale simbolo senza aggiungere o togliere parentesi
4. (*Opzionale*) Se compaiono segnali di ingresso in forma negata e non sono disponibili, li sostituisco con il NOR del segnale in forma vera.
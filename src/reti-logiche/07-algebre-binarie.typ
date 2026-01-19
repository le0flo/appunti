= Algebre binarie

Si definisce algebra binaria, un sistema matematico formato da un insieme di operatori definiti assiomaticamente ed atti a descrivere con una espressione ogni possibile funzione di variabili binarie.
Oggi è possibile rappresentare ogni funzione binaria con soltanto operatori NAND ($arrow.t$) o NOR ($arrow.b$).

== NAND

- *NOT*: $x' = x arrow.t x$
- *AND*: $x y = (x arrow.t y)'$
- *OR*: $x+y = x' arrow.t y'$

== NOR

- *NOT*: $x' = x arrow.b x$
- *AND*: $x + y = (x arrow.b y)'$
- *OR*: $x y = x' arrow.b y'$

== Sintesi con NAND

La sintesi "a NAND" può essere effettuata trasformando un'espressione SP (SP, SPS, SPSP, $dots$) che descrive la funzione assegnata, in una nuova espressione contenente esclusivamente operatori "$arrow.t$".

- Si parte dall'espressione SP, SPS. SPSP, $dots$
- Si sostituisce il simbolo "$arrow.t$" ad ogni simbolo "$*$"
- Si sostituisce il simbolo "$arrow.t$" ad ogni simbolo "$+$" e si completano le variabili singole affiancate a tale simbolo senza aggiungere o togliere parentesi
- (Opzionale) Se compaiono segnali di ingresso in forma negata e non sono disponibili, si sostituiscono con il NAND del segnale in forma vera

== Sintesi con NOR

- Si parte da un’espressione PS, PSP, PSPS, $dots$
- Si sostituisce il simbolo "$arrow.b$" ad ogni simbolo "$+$"
- Si sostituisce il simbolo "$arrow.b$" ad ogni simbolo "$*$" e si completano le variabili singole affiancate a tale simbolo senza aggiungere o togliere parentesi
- (Opzionale) Se compaiono segnali di ingresso in forma negata e non sono disponibili, li sostituisco con il NOR del segnale in forma vera

#pagebreak()

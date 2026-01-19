= Vettori

I vettori sono degli elementi di uno spazio vettoriale, perciò possono essere sommati tra di loro e moltiplicati per dei numeri detti scalari.

- $arrow(v) = (x_1, y_1)$
- $arrow(w) = (x_2, y_2)$

- *Somma*: $arrow(v) + arrow(w) = (x_1 + x_2, y_1 + y_2)$
- *Moltiplicazione*: $lambda arrow(v) = (lambda x_1, lambda y_1)$

== Spazio vettoriale

Lo spazio vettoriale è una struttura algebrica composta da:

- Un campo $KK$ di elementi scalari
- Un insieme di vettori $VV$
- due operazioni binarie interne (solitamente somma $+$ e prodotto $*$)
  - $+: VV times VV arrow VV$
  - $*: KK times VV arrow VV$

Un spazio vettoriale è tale affinché $(VV, +)$ sia commutativo.

== Sottospazio vettoriale

Dati $KK$ campo, $V$ $KK$-spazio vettoriale e $W subset.eq V$, $W$ è un sottospazio vettoriale di $V$ se:

- $arrow(0) in W$
- $forall arrow(v), arrow(w) in W : arrow(v) + arrow(w) in W$
- $forall lambda in KK : forall arrow(v) in W : lambda arrow(v) in W$

== Formula di Grassman

La formula di Grassman è una relazione tra le dimensioni di due sottospazi di uno stesso spazio vettoriale di dimensione finita.

$ dim(U + W) = dim U + dim W - dim(U and W) $

#pagebreak()

== Somma diretta

$ U plus.o W "se" U inter W = { arrow(0) } $

$U$ e $W$ sono in somma diretta se e solo se:

$ B_u union B_w = B_(u+w) : "è una base di" U + W $

== Sottospazio affine

Un sottospazio affine di $V$ è un sottoinsieme nella forma:

$ AA = { arrow(v) + arrow(w) : arrow(w) in W } $

#pagebreak()

= Numeri complessi

Un numero complesso viene rappresentato nel seguente modo:

$ z = a + b i $

- $a$ è la parte reale
- $b$ è la parte immaginaria
- $i$ è l'unità immaginaria

- $CC =$ insieme dei numeri complessi
- $RR subset.eq CC$

== Operazioni con i numeri complessi

- *Somma*: $(a+b i) + (c+d i) = (a+c) + (b+d)i$
- *Moltiplicazione*: $(a+b i) * (c+d i) = (a c - b d) + (a d + b c)i$

== Simbologia

- $overline(z)$ è il coniugato del numero reale $z arrow z = a + b i arrow overline(z) = a - b i$
- $|z|$ è il modulo del numero reale $z arrow z = a + b i arrow |z| = sqrt(a^2 + b^2) in RR$
- $z * overline(z) = (a + b i)(a - b i) = a^2 + b^2 = |z|^2$
- $z^(-1)$ è l'inverso del numero reale $z arrow z = a + b i arrow z^(-1) = overline(z) / (|z|^2)$

== Formula di Eulero

Dati $r in RR$ e $M in (0, 2 pi)$:

$ z = r(cos(M)) + i r(sin(M)) in CC = r(cos(M) + i sin(M)) = r e^(i M) arrow |z| = r, overline(z) = r e^(-i M) $

esempio:

- $e^(i pi) + 1 = 0$

== Teorema fondamentale dell'algebra

Ogni polinomio a coefficienti complessi ammette una radice complessa.

$ p(x) = a_0 + a_1 x + a_2 x^2 + dots + a_n x^n $

- $n$ = grado del polinomio
- $a in CC$ = coefficienti
- $forall z in CC$ possiamo considerare $p(z) = a_0 + a_1 z + a_2 z^2 + dots + a_n z^n in CC$

#pagebreak()

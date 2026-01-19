= Probabilità

== Definizione classica di probabilità

Dato un esperimento che presenta più esiti equiprobabili possibili, si definisce probabilità dell'evento $E subset S$:

$ P(E) = (n "di esiti favorevoli") / (n "di esisti totali") $


Dove il numero di esiti totali deve essere finito.

== Definizione frequentista

Ripetuto $N$ volte un esperimento che presenta più esiti possibili, si definisce probabilità dell'evento $E subset S$:

$ P(E) = (n "di esperimenti in cui si verifica" E) / N $

== Principio di enumerazione o fondamentale del calcolo combinatorio

Si considerino $2$ esperimenti:
il primo presenta $n$ esiti e per ciascuno di questi esiti,
il secondo ne presenta $m$, allora, se le sequenze distinte di esiti danno luogo a risultati diversi,
gli esiti dei due esperimenti saranno complessivamente $n times m$.

== Disposizioni semplici

Si dicono disposizioni semplici di $n$ oggetti di classe $K : (K <= n)$ tutti gli allineamenti (sequenze ordinate) di $K$ elementi presi dall'insieme di $n$ oggetti.

$ D_(n,k) = n(n-1)(n-2) dots (n-k+1) = n! / (n-k)! $

== Disposizioni con ripetizioni

Si dicono disposizioni con ripetizioni di $n$ oggetti distinti di classe $K$, gli allineamenti che si possono formare prendendo $K$ oggetti non necessariamente diversi dagli altri $n$ dati.

$ D^R_(n,k) = n^k $

== Permutazioni semplici

Dati $n$ oggetti distinti, si dicono permutazioni semplici di $n$ elementi gli allineamenti che si possono formare usando tutti gli $n$ oggetti diversi.

$ P_n = n(n-1)(n-2) dots 1 = n! $

#pagebreak()

== Permutazioni con ripetizioni

Dati $n$ oggetti non necessariamente distinti, si definiscono permutazioni con ripetizioni, gli allineamenti che si possono costruire a partire da gli n oggetti dati.

$ P^R_n = n! / (K_1!K_2! dots K_j!) $


se tra gli $n$ oggetti ce ne sono $K_1$ del primo tipo, $K_2$ del secondo tipo, $dots$ $K_j$ del j-esimo tipo.

$ n = sum^j_(i=1)K_i $

== Combinazioni semplici

Dati $n$ oggetti distinti, si dicono combinazioni semplici di $n$ oggetti di classe $K (K \leq n)$, gli insiemi che si possono formare a partire dagli $n$ dati:

$ C_(n,k) = vec(n, k) = n! / ((n-k)! k!) = D_(n,k) / P_k $

== Eventi complementari

Dati $E,F subset S$, $E^c subset S$ è l'insieme di tutti gli esiti di $S$ che non stanno in $E$.

=== Proprietà

- $E union E^c = S$
- $E inter E^c = emptyset$
- $(E union F)^c = E^c inter F^c$
- $(E inter F)^c = E^c union F^c$

== Definizione assiomatica di probabilità

Dato un esperimento a cui è associato uno spazio campione $S$, allora per ogni evento di $S$ è possibile definire un numero $P(E)$, detto probabilità, tale che:

- $P(E) in [0,1]$
- $P(S) = 1$
- Dati gli eventi $E_1, E_2, dots, E_n$ disgiunti: $P(union.big^n_(k=1) E_k) = sum^n_(k=1) P(E_k)$

=== Conseguenze immediate

- Dato uno spazio campione $S$ ed $E subset S arrow P(E^c) = 1 - P(E)$
- $P(emptyset) = 0$
- Dati uno spazio campione $S$ e due eventi $E$ ed $F$ con $E subset F$, allora $arrow P(E) <= P(F)$
- Dati uno spazio campione $S$ e due eventi $E$ ed $F$, allora $arrow P(E union F) = P(E) + P(F) - P(E inter F)$

== Probabilità di un evento per uno spazio campio di esiti equiprobabili

$S = {e_1, dots, e_n}$ per $n in NN backslash {0}$ e $n < +infinity$

esiti naturalmente disgiunti: $e_i inter e_k emptyset$ se $i != k$

$ S = e_1 union dots union e_n = union.big^n_(j=1) e_j arrow P(S) = sum^n_(j=1) P(e_j) = sum^n_(j=1) p = n p arrow p = 1 / n $

$E subset S, E = {e_1, dots, e_k}$

$ P(E) = P(union.big^k_(l=1) e_l) = sum^k_(l=1) P(e_l) = sum^k_(l=1) p = k p arrow p = k / n $

Possiamo vedere che:

$ P(E) = k / n = ("numero di esiti contenuti in" E) / ("numero di esiti totali in" S) arrow.l "definizione classica di probabilità" $

== Probabilità condizionata

Dato uno spazio campione $S$ e due eventi $E, F subset S$ con $P(F) != 0$, allora si definisce probabilità condizionata di $E$ condizionata da $F$

$ P(E | F) = P(E inter F) / P(F) $

== Due eventi indipendenti

Dato uno spazio campione $S$ e due eventi $E, F subset S$, essi si dicono indipendenti se:

$ P(E inter F) = P(E)P(F) $

=== Conseguenze

Se $P(F) != 0$, $P(E|F) = P(E inter F) / P(F) arrow$ se sono indipendenti $arrow (P(E)P(F)) / P(F) = P(E)$

=== Proprietà

Dati uno spazio campione $S$ e due eventi indipendenti $E,F subset S$, allora:

- $E$ ed $F^c$ sono indipendenti
- $E^c$ ed $F$ sono indipendenti
- $E^c$ ed $F^c$ sono indipendenti

#pagebreak()

== Tre eventi indipendenti

Dati lo spazio campione $S$ e tre eventi $A,B,C subset S$, essi si dicono indipendenti se:

$
P(A inter B inter C) &= P(A)P(B)P(C) \
P(A inter B) &= P(A)P(B) \
P(A inter C) &= P(A)P(C) \
P(B inter C) &= P(B)P(C)
$

Generalizzando, ad $n$ eventi, occorre considerare tutte le intersezioni.

== Partizione di uno spazio campione

Dato uno spazio campione $S$, si dice partizione di $S$ una suddivisione in eventi $E_1, dots, E_n$ tali che:

- $union.big^n_(k=1) E_k = S$
- $E_i inter E_j = emptyset$ se $i != j$

Gli elementi della partizione sono detti ipotesi e si indicano solitamente con la lettera $H$.

== Formula delle probabilità totali

Dati uno spazio campione $S$, una sua partizione ${H_1, dots, H_n}$ e un evento $E subset S$, allora:

$ P(E) = sum^n_(k=1) P(E|H_k) P(H_k) $

== Teorema di Bayes

Dati uno spazio campione $S$, una sua partizione ${H_1, dots, H_k}$ e un evento $E subset S$ con $P(E) != 0$, allora:

$ P(H_j|E) = (P(E|H_j) P(H_j)) / (sum^n_(k=1) P(E|H_k) P(H_k)) = (P(E|H_j) P(H_j)) / P(E) $

#pagebreak()

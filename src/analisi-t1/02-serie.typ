= Serie

== Successione

Una successione di numeri reali è una funzione da $NN$ in $RR$.

$ f: NN arrow RR $

I termini della successione sono notati nella seguente maniera:

- $f(0) = a_0$
- $f(1) = a_1$
- $f(2) = a_2$

La successione può essere:

- superiormente limitata
- inferiormente limitata
- limitata

== Serie

Sia $(a_n)_n$ una successione di numeri reali. Definiamo la successione $(s_n)_n$ associata:

- $s_0 = a_0$
- $s_1 = a_0 + a_1$
- $s_2 = a_0 + a_1 + a_2$
- $dots$

La successione delle somme parziali si chiama serie e si indica:

$ sum_(n = 0)^(+infinity) a_n "oppure" sum a_n $

I numeri $a_n$ si dicono termini della serie. Una serie può essere:

- Convergente $exists lim_(n arrow +infinity) s_n = A in RR$
- Divergente $exists lim_(n arrow infinity) s_n = cases(-infinity, +infinity)$
- Indeterminata $exists.not  lim_(n arrow +infinity) s_n$

Data una serie $sum a_n$, se cambio un numero finito di termini, la serie generata manterrà il carattere dell'originale.

=== Serie geometrica

Dato $q in RR$, allora:

$ R_n := q^n arrows sum_(n = 0)^(+infinity) q^n $

La serie geometrica converge soltanto se $|q| < 1$.

$ sum_n q^n = 1 / 1 - q $

=== Convergenza di una serie

Una serie converge se e soltanto se $a_n arrow 0$. La condizione precedente è necessaria ma non sufficiente per affermare la convergenza di una serie.

=== Criterio di condensazione

Dati $(a_n)_n, (b_n)_n$

$ forall n : 0 <= a_n <= b_n $

- se $b_n$ converge, anche $a_n$ converge.
- se $a_n$ diverge, anche $b_n$ diverge.

=== Criterio di condensazione

$sum_n a_n$ converge se e soltanto se converge:

$ sum_(k = 0)^(+infinity) 2^k a_2 k $

=== Criterio del valore assoluto

Data una serie $sum_n a_n$, se la serie $sum_n |a_n|$ converge, anche la prima converge.

$ |sum_n a_n| = sum_n |a_n| $

Una serie che viene dichiarata convergente usando questo criterio è detta assolutamente convergente.

=== Criterio della radice

Dato $(a_n)_n$, se $exists lim_(n arrow +infinity) root(n, |a_n|) = L$, allora:

- se $L < 1$ allora $sum a_n$ converge
- se $L > 1$ allora $sum a_n$ non converge
- se $L = 1$ allora non si può concludere nulla

=== Criterio del rapporto

Dato $(a_n)_n, a_n != 0$, se $exists lim_(n arrow infinity) |a_n + 1 / a_n| = L$, allora:

- se $L < 1$ allora $sum a_n$ converge
- se $L > 1$ allora $sum a_n$ non converge
- se $L = 1$ allora non si può concludere nulla

#pagebreak()

=== Criterio di Leibniz

Se $(a_j)_j : a_j > 0 : a_j >= a_j + 1 : lim_(j arrow +infinity) a_j = 0$, allora la serie:

$ sum_(j = 1)^(+infinity) (-1)^j * a_j $

converge.

=== Criterio del confronto asintotico

Dati $(a_n)_n, forall n : a_n >= 0$ e $(b_n)_n, forall n : b_n > 0$, se $lim_(n arrow +infinity) a_n / b_n = L > 0$, allora:

- $sum a_n < +infinity arrows sum b_n < +infinity$, entrambe convergono
- $sum a_n = +infinity arrows sum b_n = +infinity$, entrambe divergono

Dati $(a_n)_n, forall n : a_n >= 0$ e $p = n * a_n$, se $lim_(n arrow +infinity) a_n / (1 / n^p) = L > 0$, allora $sum_n a_n$ converge se $sum_n 1 / n^p$ converge; possibile converge se $p > 1$.

#pagebreak()

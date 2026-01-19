= Sistemi

Segue un esempio di sistema lineare generico a coefficienti in $KK$:

Dati $a_(i j) in KK, b_i in KK$:

$
S: cases(
  a_(1 1) x_1 + dots + a_(1 n) x_n = b_1,
  dots,
  a_(m 1) x_1 + dots + a_(m n) x_n = b_m
)
$

Un sistema lineare può essere:

- *Omogeneo*: $b_1, dots, b_m = 0$
- *Non omogeneo*: $exists b != 0$

L'insieme delle soluzioni viene indicato come:

$ W_S = { overline(x) in KK^n : S(overline(x)) = 0 } $

Semplificare un sistema significa ottenere un altro insieme di soluzioni $W_(S')$ tale che:

$ W_(S') = W_S $

== Mosse di Gauss

- Scambiare due righe: $R_i arrow.l.r R_j$
- Moltiplicare una riga per uno scalare: $R_i arrow lambda R_i : lambda in KK$
- Sostituire una riga con se stessa sommata ad un multiplo di un'altra riga: $R_i arrow R_i + lambda R_j : lambda in KK$

Applicando le 3 mosse di Gauss ad un sistema lineare $S$, deriviamo il sistema $S'$ con il medesimo numero di soluzioni rispetto al sistema originale $S$.

== Matrice dei coefficienti

$
A_S = A = mat(
  a_(1 1), dots, a_(1 n);
  dots, dots, dots;
  a_(m 1), dots, a_(m n)
) in M(m,n,KK)
$

== Vettore dei termini noti

$ overline(b) = (b_1, dots, b_m) in KK^m $

== Matrice del sistema

$
C_S = C = (A | overline(b)) = mat(
  a_(1 1), dots, a_(1 n), b_1;
  dots, dots, dots, dots;
  a_(m 1), dots, a_(m n), b_m
) in M(m,n,KK)
$

== Sistema lineare omogeneo associato

$
S_0: cases(
  a_(1 1) x_1 + dots + a_(1 n) x_n = 0,
  dots,
  a_(m 1) x_1 + dots + a_(m n) x_n = 0
)
$

$ W_S = overline(x) + W_(S_0) $

== Rango

Il rango di un sistema $S$ è:

$ "rg"(S)= dim "span"(C^1, dots, C^n, overline(b)) subset.eq KK^m $

Il rango è sempre minore del numero di righe $m$.
Se la matrice del sistema $C$ è in forma di "Gauss-Jordan":

$ "rg"(S) = n"-pivot" $

Possiamo dire che:

$ "rg"(S) <= min(m, n) $

== Teorema di Rouché-Capelli

Dato un sistema lineare $S$ e il sistema lineare omogeneo associato $S_0$, $S$ ha la soluzione se e soltanto se:

$ "rg"(S) = "rg"(S_0) $

Se $W_S != emptyset$, allora la $dim(W_S) = n - "rg"(S_0)$.

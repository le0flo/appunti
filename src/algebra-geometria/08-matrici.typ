= Matrici

Possiamo definire una matrice come una "griglia di numeri"

$ a_(i j) in KK = mat(a_(1 1), a_(1 2), dots, a_(1 n); a_(2 1); dots; a_(m 1), a_(m 2), dots, a_(m n)) $

Una matrice $m times n$ dove $m$ sono le righe e $n$ sono le colonne

== Notazione

$ A = M(m,n,KK) = (a_(i j)) : i = 1 dots m : j = 1 dots n $

- $A^i$ è la $i$-esima colonna $in KK^m arrow A = vec(A^1, dots, A^n)$
- $A_j$ è la $j$-esima colonna $in KK^n arrow A = vec(A_1, -, dots, -, A_m)$

== Pivot

Data una riga $R_i$ di una matrice $M(m,n,KK)$, il pivot di $R_i$ è il primo coefficiente non nullo partendo da sinistra.

== Matrice a scalini

Data una matrice $M(m,n,KK)$, essa può essere detta "a scalini" se $forall i$, considerando la $i$-esima riga $R_i$ e il rispettivo pivot $a_(i j)$:

$ a_(k h) = 0 forall cases(k > i, h < j) $

esempio:

$
mat(
1, 1, 0, 0, 1;
0, 1, 1, 0, 1;
0, 0, 1, 1, 1;
0, 0, 0, 1, 1;
0, 0, 0, 0, 1
)
$

== Rango

Dato $A in M(m,n,KK)$:

$ "rg"(A)= dim "span"(A^1, dots, A^n, overline(b)) <= KK^m $

- Se $A'$ è una matrice ottenuta da $A$ usando le mosse di Gauss, allora $"rg"(A') = "rg"(A)$
- $"rg"(A) <= min(m,n)$
- $"rgr"(A) = dim "span"(A_1, dots, A_m) <= n :$ rango per riga
- $"rgr"(A') = "rgr"(A)$, se $A'$ è una matrice ottenuta usando le mosse di Gauss

== Trasposta

La trasposta di una matrice:

$ A in M(m,n,KK) = (a_(i j)) arrow attach(A, tl: t) in M(n,m,KK) = (a_(j i)) $

== Sotto-matrice

La sotto-matrice $B$ di $A$ è una matrice $B in M(k,h,KK)$ con $k <= m$ e $h <= n$, ottenuta da $A$ togliendo $m - k$ righe e $n - h$ colonne.

== Matrice dei cofattori

Dato $A in M(m,n,KK)$:

$ C_(i j) (A) in M(m-1, n-1, KK) $

La matrice dei cofattori di una matrice $A$ si ottiene togliendo la $i$-esima riga e la $j$-esima colonna dalla matrice $A$.

- se $B <= A$, allora $"rg"(B) <= "rg"(A)$
- $forall$ combinazione lineare di $A^1, dots, A^n$ ottengo una combinazione lineare di $B^1, dots, B^k$

== Determinante

Dato $A in M(n,KK)$:

Il determinante di $A$ è uno scalare che si può ottenere soltanto da matrici quadrate, e si ottiene nei seguenti modi:

+ $n = 1 arrow det A = a$
+ $n = 2 arrow det A = a d - b c$
+ $n >= 3 arrow det A = sum^n_(j=1) (-1)^(j+1) a_(1 j) det C_(1 j) (A)$

Per le matrici triangolare superiore, matrici diagonali e matrici identità:

$ det A = "prodotto degli elementi sulla diagonale" $

Se una matrice $A$ ha due righe o colonne uguali $arrow det A = 0$

#pagebreak()

== Determinante e le mosse di Gauss

Il determinante è una funzione che prende in entrata una matrice e restituisce uno scalare.
Questa funzione si relaziona con le mosse di Gauss, nella seguente maniera:

- $A_i arrow.l.r A_j arrow det(A') = -det(A)$
- $A_i arrow lambda A_i arrow det(A') = lambda det(A)$
- $A_i arrow A_i + lambda A_j arrow det(A') = det(A)$

== Moltiplicazione righe per colonne

Date due matrici generiche, generalmente è impossibile moltiplicarle.
Se le matrici assumono le seguenti forme, allora la moltiplicazione è possibile:

- $A in M(m,n,KK)$
- $B in M(n,k,KK)$

$ A B in M(m,k,KK) $

#pagebreak()

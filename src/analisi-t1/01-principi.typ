= Principi

== Principio di induzione

Il principio di induzione è un metodo generico per dimostrare un teorema qualsiasi con dominio in $NN$.
Il procedimento di prova per induzione prevede un affermazione o uguaglianza che dipende da $n$ e viene indicata con: $P(n)$.

Data l'affermazione $P(n)$, il principio prova la precedente, al verificarsi delle seguenti condizioni:

- $P(0)$
- $P(k)$

Se queste condizioni si verificano, allora: $P(n)$ è vera $forall n in NN$.

== Principio del minimo

Ogni sottoinsieme di $NN$ ha un minimo.

== Principio del valore intermedio

Data una funzione continua $f(x)$ e due punti $f(a)$ e $f(b)$, allora:

$ exists c in ] a, b [ : f(c) = lambda $

== Piccole nozioni

- L'insieme dei numeri reali non è numerabile
- Radice aritmetica: $sqrt(n) = m : m in NN$
- Seno iperbolico: $sinh(x) = e^x - e^(-x) / 2$
- Coseno iperbolico: $cosh(x) = e^x + e^(-x) / 2$
- Tangente iperbolica: $tanh(x) = sinh(x) / cosh(x)$

== Maggioranti e minoranti

Dato $AA = { a in RR }$:

- Maggiorante: $M in RR : forall a in AA : a <= M$
- Minorante: $m in RR : forall a in AA : a >= M$

Se l'insieme $AA$ ammette un maggiorante si dice superiormente limitato, se ammette un minorante si dice inferiormente limitato e se ammette entrambe si dice limitato.

- Il massimo di un insieme $AA$, se esiste, è il più piccolo dei maggioranti
- Il minimo di un insieme $AA$, se esiste, è il più grande dei minoranti

== Numeri complessi

$ x^2 + 1 = 0, "impossibile in" RR $

Si risolve introducendo $i$: $x^2 = -1 arrow x = sqrt(-1) arrow i^2 = -1$.
Un numero complesso è composto da due parti:

- parte reale: $a in RR$
- parte complessa: $i * b : b in RR$

== Notazione dei numeri complessi

$ z = a + i b $

== Teorema fondamentale dell'algebra

- *Tesi* $p(x) = a_n x^n + a_(n-1) x^(n-1) + dots + a_1 x^1 + a_0$
- *Ipotesi* Il polinomio $p(x)$ ha $n$ radici in $CC$ tenendo in conto la moltiplicabilità: $a_0, dots , a_n in CC$ e $a_n != 0$.

#pagebreak()

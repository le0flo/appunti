= Legge dei grandi numeri

== Introduzione

Sia $X$ la variabile casuale che rappresenta l'esito di un esperimento.
$E[X]$ sarà la grandezza fisica da misurare, $"Var"(X)$ è proporzionale all'errore di misura al quadrato, perciò $sqrt("Var"(X))$ è proporzionale all'errore di misura.
Se l'esperimento viene ripetuto $N$ volte, si introducono $X_1, dots, X_N$ per rappresentare gli esiti di ciascun esperimento.
$X_1, dots, X_N$ sono variabili casuali indipendenti e identicamente distribuite (v.c.i.i.d.), nel caso in cui l'esperimento venga ripetuto in maniera indipendente e identica.

$overline(X) = (sum^N_(k=1) X_k) / N$ è la media aritmetica, o media campionaria in inferenza statistica.
$overline(X)$ è una variabile casuale, funzione di $X_1, dots, X_N$.
Se $X_1, dots, X_N$ sono identicamente distribuite, $mu = E[X_1] = dots = E[X_N]$ e $sigma^2 = "Var"(X_1) = dots = "Var"(X_N)$.

$
E[X] = E[(sum^N_(k=1) X_k) / N] = 1 / N E[sum^N_(k=1) X_k] = 1 / N sum^N_(k=1) E[X_k] = 1 / N sum^N_(k=1) mu = (N mu) / N &= mu \
"Var"(X) = "Var"((sum^N_(k=1) X_k) / N) = 1 / N^2 "Var"(sum^N_(k=1) X_k) = 1 / N^2 sum^N_(k=1) "Var"(X_k) = 1 / N^2 sum^N_(k=1) sigma^2 = (N sigma^2) / N^2 &= sigma^2 / N
$

Se $N$ tende ad infinito, il valore medio rimane invariato, mentre l'errore tende a 0. Questo è il concetto dietro la legge dei grandi numeri.

== Disuguaglianza di Markov

Sia $X$ una variabile casuale con valori $RR^+ backslash {0}$, con $E[X] = mu$ e sia $a in RR^+$.

$ P(X >= a) <= E[X] / a $

Questa disuguaglianza è sempre vera nella teoria, ma nella pratica risulta utile soltanto se $a > E[X]$.

== Disuguaglianza di Cebycev

Data una variabile casuale $X$ con $E[X] = mu$, $"Var"(X) = sigma^2$ e considerata $r in RR^+$.

$ P(|X - mu| >= r) <= sigma^2 / r^2 $

Questa disuguaglianza viene impiegata come stima della probabilità soltanto se $sigma^2 / r^2 < 1$.

== Legge dei grandi numeri (formulazione debole)

Sia data una successione di variabili casuali indipendenti e identicamente distribuite (v.c.i.i.d.) $X_1, dots, X_N$ con $E[X_k] = mu$, $"Var"(X_k) = sigma^2$ e $k = 1,dots,N$.
Allora per ogni $epsilon > 0$ piccolo a piacere:

$ lim_(N arrow +infinity) P(|(sum^N_(k=1) X_k) / N - mu| > epsilon) = 0 $

Ovvero, la media aritmetica delle $X_k$ converge in probabilità alla media teoria $mu$.

#pagebreak()

== Funzione generatrice dei momenti

Data una variabile casuale $X$, si dice funzione generatrice dei momenti (se esiste):

$ phi(t) = E[e^(t x)] $

con $t in RR$, si può notare che:

$
phi(t) =
cases(
  sum^n_(k=1) e^(t x_k) p(x_k) &"per" X in {x_1, dots, x_n},
  integral^(+infinity)_(-infinity) e^(t x) f(x) d x &"per" X "variabile casuale continua",
)
$

=== Proprietà

- $phi(0) = E[e^(0x)] = E[1] = 1$
- $(d phi) / (d t) bar_(t=0) = (d E[e^(t x)]) / (d t) bar_(t=0) = E[(d e^(t x)) /(d t)] bar_(t=0) = E[x e^(t x)] bar_(t=0) = E[x]$
- $(d^n phi) / (d t^n) bar_(t=0) = E[x^n]$
- Siano $X$ e $Y$ due variabili casuali indipendenti, allora: $phi_(X+Y)(t) = phi_X(t) phi_Y(t)$
- Se due variabili casuali presentano la stessa funzione generatrice dei momenti, allora sono identicamente distribuite.

#pagebreak()

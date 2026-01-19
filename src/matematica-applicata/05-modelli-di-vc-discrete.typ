= Modelli di variabili casuali discrete

== Variabile casuale di Bernoulli

$X tilde.op "Be"(p)$ con $p in [0,1]$, se:

$
X = cases(
  1& "se" E "si verifica",
  0& "se" E "non si verifica"
)
$

- $p(1) = p = p(E)$
- $p(0) = 1-p = p(E^c) = q$

=== Varianza

- $E[X] = 0*q + 1*p = p$
- $E[X^n] = 0^n*q + 1^n*p = p$

$ "Var"(X) = E[X^2]-E[X]^2 = p q $

=== Funzione generatrice dei momenti

$ phi(t) = E[e^(t x)] = e^(t*0) * q + e^(t*1) * p = q+e^t p $

== Variabile casuale binomiale

$X tilde.op B(n,p)$ con $p in [0,1], n in NN backslash {0}$

Si consideri un esperimento in cui l'evento $A$ si verifica con probabilità $p$.
Si ripete tale esperimento in modo indipendente e identico $n$ volte.
$X$ rappresenta il numero di prove in cui si è verificato $A$.

=== Funzione di massa

$ P(X=k) = p(k) = vec(n,k) p^k q^(n-k) $

per $q = 1-p, X in {0,1,dots,n}, k=0,1,dots,n$.

=== Varianza

$X = sum^n_(j=1) Y_j$ con $Y_j tilde.op "Be"(p)$ e $Y_j$ indipendente e identicamente distribuita:

- $E[X] = E[sum^n_(j=1) Y_j] = sum^n_(j=1) E[Y_j] = sum^n_(j=1) p = n p$

$ "Var"(X) = "Var"(sum^n_(j=1) Y_j) = sum^n_(j=1) "Var"(Y_j) = sum^n_(j=1) p q = n p q $

=== Funzione generatrice dei momenti

$ phi_X(t) = phi_(sum^n_(j=1) Y_j)(t) = phi_(Y_1)(t) * dots * phi_(Y_n)(t) = (q+e^t p)^n $

#pagebreak()

=== Proprietà di riproducibilità

Siano $X tilde.op B(n_1,p)$ e $Y tilde.op B(n_2,p)$, indipendenti tra loro, allora:

$ Z = X+Y tilde.op B(n_1+n_2, p) $

== Variabile casuale di Poisson (o poissoniana)

$X tilde.op "Po"(lambda)$ con $lambda in RR^+$.
$X$ è una variabile casuale discreta con $X in NN$.

=== Funzione di massa

$ p(k) = (e^(-lambda)lambda^k) / k! "se" k in NN $

=== Funzione di distribuzione di probabilità

$ e^(-lambda) lambda^k / k $

La funzione di distribuzione di probabilità della variabile casuale poissoniana è detta legge degli eventi rari.

=== Varianza

- $E[X] = (d phi) / (d t)bar_(t=0) = (d e^(lambda(e^t-1)) / (d t)bar_(t=0) = [e^(lambda(e^t-1)) lambda e^t]bar_(t=0) = lambda$
- $E[X^2] = (d^2 phi) / (d t^2)bar_(t=0) = lambda^2 + lambda$

$ "Var"(X) = E[X^2] - E[X]^2 = lambda^2 + lambda - lambda^2 = lambda $

=== Funzione generatrice dei momenti

$ phi(t) = E[e^(t x)] = sum^(+infinity)_(k=0) e^(t k) (e^(-lambda) lambda^k) / k! = e^(lambda(e^t-1)) $

=== Proprietà di riproducibilità

Siano $X tilde.op "Po"(lambda_1)$ e $Y tilde.op "Po"(lambda_2)$, indipendenti tra loro, allora:

$ Z = X+Y tilde.op "Po"(lambda_1 + lambda_2) $

Le variabili casuali poissoniane possono essere viste come il limite di una variabile casuale binomiale quando $n$ tende a $+infinity$.

$ n arrow +infinity, n p = lambda arrow p = lambda / n << 1 $

#pagebreak()

== Variabile casuale geometrica

$X tilde.op  G(p)$ con $P(A) = p in [0,1]$

Si ripete un esperimento in maniera identica e indipendente fino ad osservare l'evento $A$.

$
X = "'n° di prove per ottenere" A "'" \
X in {1,dots,infinity} arrow X in NN backslash {0}
$

=== Funzione di massa

$ p(X=k) = p(k) = (1-p)^(k-1) p "con" k = 0,1,dots,+infinity $

=== Varianza

- $E[X] = sum^(+infinity)_(k=1) k p q^(k-1) = 1 / p$
- $E[X^2] = sum^(+infinity)_(k=1) k^2 p q^(k-1) = (2-p) / p^2$

$ "Var"(X) = E[X^2] - E[X]^2 = (2-p) / p^2 - 1 / p = (1-p) / p^2 $

== Variabile casuale binomiale negativa

$X tilde.op "NB"(r,p)$ con $r in NN backslash {0}$

Si ripete un esperimento in maniera identica e indipendente fino ad ottenere $r$ volte l'evento $A$.
Con $P(A) = p$ si indica la probabilità del verificarsi dell'evento $A$ nel singolo esperimento.

$
X = "'n° di tentativi per osservare" r "volte l'evento" A "'" \
X in {r, r+1, r+2,dots,+infinity}
$

=== Funzione di massa

$ P(X=k) = p(k) = vec(k-1,r-1) p^r q^(k-r) $

=== Varianza

Dato $X = sum^r_(j=1) Y_j$ con $Y_j tilde.op G(p)$ indipendenti

- $E[X] = E[sum^r_(j=1) Y_j] = sum^r_(j=1) E[Y_j] = sum^r_(j=1) 1 / p = r / p$

$ "Var"(X) = "Var"(sum^r_(j=1) Y_j) = sum^r_(j=1) "Var"(Y_j) = (r q) / p^2 $

#pagebreak()

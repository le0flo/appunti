= Teorema del limite centrale

== Definizione

Data una successione di variabili casuali indipendenti e identicamente distribuite $X_1, dots, X_n$
con valore medio $E[X_k] = mu$ e varianza $"Var"(X_k) = sigma^2$, per $k = 1,dots,n$ e definita la variabile casuale:

$ Y_n = (sum^n_(k=1) X_k - n mu) / (sigma sqrt(n)) $

Converge in distribuzione ad una variabile casuale normale standard, ovvero $forall a in RR$:

$ lim_(n arrow infinity) P(Y_n <= a) = F_Z(a) &"con" Z tilde.dot N(0,1) $

Dato $S_n = sum^n_(k=1) X_k$ e $Y_n = (S_n - n mu) / (sigma sqrt(n))$:

- $E[Y_n] = E[(S_n - n mu) / (sigma sqrt(n))] = (E[S_n] - n mu) / (sigma sqrt(n)) = (n mu - n mu) / (sigma sqrt(n)) = 0$
- $"Var"(Y_n) = 1 / (sigma^2 n) "Var"(S_n) = (n sigma^2) / (sigma^2 n) = 1$

#pagebreak()

== Applicazioni del teorema del limite centrale

=== Prima applicazione

Se $X tilde.op B(n,p)$ con $n >> 1$

$
X = sum^n_(k=1) T_k &"con" T_k tilde.op "Be"(p) "indipendenti" \
(X - n p) / sqrt(n p q) tilde.dot N(0,1) &"questo risultato è vero per" n >= 30
$


Per migliorare la approssimazione per $n$ "non così grande", si introduce la seguente tecnica.
Se $X tilde.op B(n,p)$ e $P(X=k) = p(k) != 0$

$
X tilde.dot N(n p, n p q) \
P(X=k) = integral^k_k 1 / sqrt(n p q 2 pi) e^(- (x - n p)^2 / (2 n p q)) d x = 0
$

Perciò:

$
P(X=k) = P(k - 1 / 2 < X <= k + 1 / 2) = integral^(k + 1 / 2)_(k - 1 / 2) 1 / sqrt(n p q 2 pi) e^(- (x - n p)^2 / (2 n p q)) d x != 0 \
P(k - 1 / 2 < X <= k + 1 / 2) = F_X(k + 1 / 2) - F_X(k - 1 / 2)
$

Se bisogna calcolare $P(X < k) = sum^(k-1)_(i=0) p(i) = sum^(k-1)_(i=0) vec(n, i) p^i q^(n-i)$:

$
X tilde.dot N(n p, n p q) \
P(X < k) = P(X <= k) arrow P(X < k - 1 / 2) != P(X <= k)
$

$P(X < k)$ viene calcolata per $P(X < k - 1 / 2)$:

- $P(X < k) = P(X < k - 1 / 2)$
- $P(X <= k) = P(X < k + 1 / 2)$
- $P(X > k) = P(X > k + 1 / 2)$
- $P(X >= k) = P(X > k - 1 / 2)$

Questa serie di uguaglianze si chiama metodo dell'approssimazione alla continuità.

=== Seconda applicazione

Se, in generale, $X_1,dots,X_n$ sono variabili casuali indipendenti e identicamente distribuite:

$ S_n = sum^n_(k=1) X_j tilde.dot N(n mu, n sigma^2) $

- $E[X_k] = mu$
- $"Var"(X_k) = sigma^2$
- con $k=1,dots,n$

#pagebreak()

=== Terza applicazione

Se, in generale, $X_1,dots,X_n$ sono variabili casuali indipendenti e identicamente distribuite, con $E[X_k] = mu$ e $"Var"(X_k) = sigma^2$:

$
overline(X) = (sum^n_(j=1) X_j) / n \
Y_n = (overline(X) - mu) / (sigma / sqrt(n)) tilde.dot N(0,1)
$

= Modelli di variabili casuali continue

== Variabile casuale uniforme

$X tilde.op U(alpha, beta)$ con $alpha,beta in RR$ e $alpha < beta$

$
f(x) = cases(
  1 / (beta-alpha) &"se" x in [alpha, beta],
  0 &"altrove"
)
$

=== Varianza

- $E[X] = integral^(+infinity)_(-infinity) x f(x) d x = integral^(+infinity)_(-infinity) x 1 / (beta-alpha) d x = (beta+alpha) / 2$
- $E[X^2] = integral^(+infinity)_(-infinity) x^2 f(x) d x = integral^(+infinity)_(-infinity) x^2 1 / (beta-alpha) d x = (beta^2+alpha^2+alpha beta) / 3$

$ "Var"(X) = E[X^2] - E[X]^2 = (beta^2+alpha^2+alpha beta) / 3 - (beta+alpha)^2 / 4 = (beta-alpha)^2 / 12 $

=== Funzione di distribuzione di probabilità

Se $a in RR$

$
F(a) = P(X <= a) = integral^a_(-infinity) f(a) d x =
cases(
  0 &"se" a < alpha,
  (a - alpha) / (beta - alpha) &"se" alpha <= a <= beta,
  1 &"se" a > beta
)
$

== Variabile casuale gaussiana (o normale)

$X tilde.op N(mu, sigma^2)$ oppure $X tilde.op N(mu, sigma)$ con:

- $mu in RR$
- $sigma in RR^+$

$ f(x) = 1 / (sigma sqrt(2 pi)) e^((x-mu)^2 / (2sigma^2)) $

Il massimo di $f(x)$ si ha in $x = mu$

$ f(mu) = 1 / (sigma sqrt(2 pi)) $

La variabile casuale normale standard è data da: $mu = 0, sigma = 1$.

=== Funzione di distribuzione di probabilità

$ F(a) = P(X <= a) = integral^a_(-infinity) f(x) d x = integral^a_(-infinity)1 / (sigma sqrt(2 pi)) e^(- (x-mu)^2 / (2 sigma^2))d x $

=== Funzione generatrice dei momenti

Sapendo che: $I = integral^(+infinity)_(-infinity) e^(- z^2 / 2) d z = sqrt(2 pi)$.

$
phi(t) = E[e^(t x)] = integral^(+infinity)_(-infinity) e^(t x) f(x) d x arrow
phi(t) = e^(t mu + (t^2 sigma^2) / 2)
$

=== Varianza

- $E[X] = mu$
- $E[X^2] = mu^2 + sigma^2$

$ "Var"(X) = sigma^2 $

=== Proprietà di riproducibilità

Dati $X tilde.op N(mu_1, sigma^2_1), Y tilde.op N(mu_2, sigma^2_2)$ indipendenti e $T = X + Y$:

$
phi_T(t) = e^(t mu_1 + (t^2 sigma^2_1) / 2) e^(t mu_2 + (t^2 sigma^2_2) / 2) arrow
T tilde.op N(mu_1 + mu_2, sigma^2_1 + sigma^2_2)
$

=== Trasformazione lineare

Dati $X tilde.op N(mu, sigma^2), Y = alpha X + beta$ con $alpha in RR backslash {0}, beta in RR$:

$
phi_Y(t) = E[e^(t Y)] = e^(t(alpha mu+beta) + t^2 / 2 alpha^2 sigma^2) arrow
Y tilde.op N(alpha mu+beta, alpha^2sigma^2)
$

Se $alpha = 1 / sigma$ e $beta = - mu / sigma$, allora: $Y tilde.op N(1 / sigma mu - mu / sigma, 1 / sigma^2 sigma^2) = N(0,1)$.
Per qualsiasi variabile casuale gaussiana $X tilde.op N(mu, sigma)$ è sempre possibile introdurre la trasformazione lineare $Z = (X-mu) / sigma tilde.op N(0,1)$.

=== Proprietà della funzione di distribuzione

Data $Z tilde.op N(0,1)$ e la sua funzione di ripartizione $F_Z(a)$:

- $F_Z(0) = P(Z <= 0) = 1 / 2$
- $F_Z(a) = integral^a_(-infinity) f_Z(x) d x = 1 - F_Z(-a)$


=== Valore critico della normale standard

Data $Z tilde.op N(0,1)$:

$ Z_beta = 1 - F_Z(Z_beta) = beta arrow P(Z > Z_beta) = beta $

== Variabile casuali esponenziali

$X tilde.op E(lambda)$ con $lambda in RR^+$

$
f(x) = cases(
  lambda e^(-lambda x) &"se" x >= 0,
  0 &"altrove"
)
$

=== Funzione di distribuzione di probabilità

$
F(a) = P(X <= a) = integral^a_(-infinity) f(x) d x =
cases(
  0 &"se" a < 0,
  1 - e^(lambda a) &"se" a >= 0
)
$

=== Funzione generatrice dei momenti

$
phi(t) = E[e^(t x)] = integral^(+infinity)_(-infinity) e^(t x)f(x) d x arrow
phi(t) = lambda / (lambda - t)
$

=== Varianza

- $E[X] = (d phi(t)) / (d t) bar_(t=0) = lambda / (lambda-t)^2 bar_(t=0) = 1 / lambda$
- $E[X^2] = (d^2 phi(t)) / (d t^2) bar_(t=0) = d / (d t)(lambda / (lambda-t)^2)bar_(t=0) = (2 lambda) / (lambda-t)^3 bar_(t=0) = 2 / lambda^2$
- $"Var"(X) = E[X^2] E[X]^2 = 2 / lambda^2 - 1 / lambda^2 = 1 / lambda^2$

=== Proprietà

- $forall c in RR^+$ e $X tilde.op E(lambda)$

$ Y = c X tilde.op E(lambda / c) $

- Siano dati $n$ dispositivi $D_1,dots,D_n$ e si supponga che $X_k$ sia la durata di funzionamento di $D_k$.

$ X_k tilde.op E(lambda_k) "con" lambda_k in RR^+ $

Si consideri un sistema che contiene i dispositivi in serie e sia $T$ la variabile casuale che rappresenta la durata di funzionamento del sistema.

$ T tilde.op E(sum^n_(k=1) lambda_k) $

- Dati $t,s in RR^+$ e $X tilde.op E(lambda)$

$ P(X > t+s | X > t) = P(X > s) $

== Funzioni di variabili casuali

// TODO: da capire meglio

== Processi stocastici

Un processo stocastico è una famiglia di variabili casuali che dipendono da un parametro.
Spesso il parametro ha il significato di un tempo.

$ X(t) $

// TODO: da copiare

== Variabile casuale lognormale

$X tilde.op N(mu, sigma^2) arrow Y = e^X tilde.op log(N(mu, sigma^2))$.
Dato $a in RR^+$:

$
f_Y(a) = cases(
  1 / (a sigma sqrt(2 pi)) e^(- ((ln(a)-mu)^2) / (2 sigma^2)) &"se" a > 0,
  0 &"altrove"
)
$

=== Varianza

- $E[Y] = E[e^X] = phi_X(1) = e^(mu + sigma^2 / 2)$
- $E[Y^2] = E[e^(2 x)] = phi_X(2) = e^(2 mu + 2 sigma^2)$
- $"Var"(Y) = E[Y^2] - E[Y]^2 = e^(2 mu + 2 sigma^2) - e^(2 mu + sigma^2) = e^(2 mu + sigma^2) (e^(sigma^2) - 1)$

=== Proprietà di riproducibilità

Dati $Y_1 tilde.op log(N(mu_1, sigma_1^2))$ e $Y_2 tilde.op log(N(mu_2, sigma_2^2))$ indipendenti:

$ Z = Y_1 Y_2 = e^(X_1) e^(X_2) = e^(X_1 + X_2) = e^T tilde.op log(N(mu_1 + mu_2, sigma_1^2 + sigma_2^2)) $

#pagebreak()

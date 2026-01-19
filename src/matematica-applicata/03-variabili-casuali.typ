= Variabili casuali

Ad ogni esperimento è possibile associare una variabile casuale a valori reali, i cui valori variano in base all'esito dell'esperimento.

== Variabili casuali discrete

$X$ si dice variabile casuale discreta, se $X in {x_1, dots, x_n}$ con $n in NN backslash {0}$ per $x_j in RR$.

=== Funzione di massa di probabilità

Si associa alla variabile casuale discreta $X$, una funzione:

$
p &:& RR arrow [0,1] \
p(y) &=& P(X = y)
$

=== Proprietà

- $p(y) in [0,1]$
- $1 = P(S) = P(X = x_1 union dots union X = x_n) = sum^n_(k=1) P(X = x_k) = sum^n_(k=1) p(x_k)$

=== Funzione di distribuzione di probabilità (o di ripartizione)

Data la variabile casuale discreta $X$, si associa ad essa la funzione (detta di ripartizione o distribuzione di probabilità):

$
F &:& RR arrow [0,1] \
F(y) &=& P(X <= y)
$

== Variabili casuali continua

Una variabile casuale $X$ si dice continua se ad essa è associata una funzione di densità di probabilità $f: RR arrow RR^+ union {0}$ tale che:

$ P(X in B) = integral_B f(y) d y $

$forall B < RR$

=== Proprietà

- $f(y) >= 0 forall y in RR$
- $1 = P(S) = P(X in RR) = integral^(+infinity)_(-infinity) f(y) d y$
- se $X$ è una variabile casuale continua e $a in RR$:

$ P(X <= a) = P(X < a) = integral^a_(-infinity) f(x) d x $

- sia $X$ una variabile casuale continua con funzione di ripartizione $F(y)$ e siano $a,b in RR$ con $a < b$:

$ P(a < X <= b) = F(b) - F(a) $

=== Funzione di distribuzione di probabilità (o di ripartizione)

Per una variabile casuale continua $X$:

$
F(y) &=& P(X <= y) = integral^y_(-infinity) f(X) d x \
f(y) &=& (d F(y)) / (d y)
$

=== Proprietà della funzione di distribuzione di probabilità

- $F(y) in [0,1] forall y in RR$
- $lim_(y arrow -infinity) F(y) = P(X <= -infinity) = 0$
- $lim_(y arrow +infinity) F(y) = P(X <= +infinity) = P(X in RR) = 1 = P(S)$
- $forall a,b in RR$ tali che $a < b arrow F(a) <= F(b)$

== Coppie di variabili casuali discrete

Dato un esperimento si associano ad esso due variabili casuali $X$ e $Y$ che si dicono discrete se:

$
X in {x_1, dots, x_n} \
Y in {y_1, dots, y_m} \
n,m in NN backslash {0}
$

=== Funzione di massa di probabilità congiunta

$
p &: RR^2 arrow [0,1] \
p(a,b) &= P(X=a inter Y=b) = P(X=a, Y=b) forall a,b in RR
$

Proprietà:

- $p(a,b) in [0,1] forall a,b in RR$
- $sum^n_(i=1) sum^m_(j=1) p(x_i, y_j) = 1$

=== Funzioni di massa di probabilità marginali

$
p_x(a) = P(X=a) = P(X=a, Y<=+infinity) = sum^m_(j=1) p(a, y_j) &"con" a in RR \
p_y(b) = P(Y=b) = P(X<=+infinity, Y=b) = sum^n_(i=1) p(x_i, b) &"con" b in RR
$

esempio, date 12 batterie, di cui 3 cariche, 4 poco cariche e 5 non funzionanti, ne vengono scelte 3 a caso.
$X = "numero di batterie cariche estratte"$, $Y = "numero di batterie poco cariche estratte"$.
Per $(X,Y)$ determinare $p(a,b)$ e $p_X(a),p_Y(b)$.

#pagebreak()

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 10pt,
  align: center,
  $Y backslash X$, $0$, $1$, $2$, $3$, $p_Y$,
  $0$, $10 / 220$, $30 / 220$, $15 / 220$, $1 / 220$, $56 / 220$,
  $1$, $40 / 220$, $60 / 220$, $12 / 220$, $0$, $112 / 220$,
  $2$, $30 / 220$, $18 / 220$, $0$, $0$, $48 / 220$,
  $3$, $4 / 220$, $0$, $0$, $0$, $4 / 220$,
  $p_X$, $84 / 220$, $108 / 220$, $27 / 220$, $1 / 220$,
)

$
p(0,0) &= P(X=0, Y=0) = (C_(3,0)C_(4,0)C_(5,3)) / C_(12,3) = vec(5,3) / vec(12,3) = 10 / 220 \
p(0,1) &= P(X=0, Y=1) = (C_(3,0)C_(4,1)C_(5,2)) / C_(12,3) = (4 vec(5,2)) / vec(12,3) = 40 / 220 \
dots &  \
p(1,2) &= P(X=1, Y=2) = (C_(3,1)C_(4,2)C_(5,0)) / C_(12,3) = 40 / 220
$

=== Funzione di distribuzione di probabilità congiunta

$
F: RR^2 arrow [0,1] \
F(a,b) = P(X <= a inter Y <= b) = P(X <= a, Y <= b) forall a,b in RR
$

=== Funzioni di ripartizione di probabilità marginali

$
F_X(a) = P(X <= a) = P(X <= a, Y<=+infinity) = F(a,+infinity) \
F_Y(b) = P(Y <= b) = P(X<=+infinity, Y <= b) = F(+infinity,b)
$

== Coppie di variabili casuali congiuntamente continue

Dato un esperimento a cui sono associate le variabili casuali $X$ e $Y$, si dice che esse sono congiuntamente continue se è possibile per esse definire una funzione

$ f: RR^2 arrow RR^+ union {0} $

Tale che $forall D in RR^2$:

$ P((X,Y) in D) = integral_(D)integral f(x,y) d x d y $


$f$ è detta funzione di densità di probabilità congiunta

=== Funzioni di densità di probabilità marginali

$
f_X(a) = integral^(+infinity)_(-infinity) f(a,y) d y \
f_Y(b) = integral^(+infinity)_(-infinity) f(x,b) d x
$

=== Funzione di distribuzione di probabilità congiunta

$
F: RR^2 arrow [0,1] \
F(a,b) = P(X <= a inter Y <= b)
$

Se $(X,Y)$ sono variabili casuali continue:

$ F(a,b) = integral^a_(-infinity) (integral^b_(-infinity) f(x,y) d y) d x arrow f(a,b) = (theta^2 F(a,b)) / (theta a theta b) $

=== Funzioni di distribuzione di probabilità marginali

$
F_X(a) = P(X <= a) = P(X <= a, Y<=+infinity) = F(a,+infinity) = integral^a_(-infinity) (integral^(+infinity)_(-infinity) f(x,y) d y) d x \
F_Y(b) = P(Y <= b) = P(X<=+infinity, Y <= b) = F(+infinity,b) = integral^b_(-infinity) (integral^(+infinity)_(-infinity) f(x,y) d x) d y
$

== Coppie di variabili casuali indipendenti

Data una coppia di variabil casuali, esse si dicono indipendenti se $forall A,B subset RR$:

$ P(X in A, Y in B) = P(X in A)P(Y in B) $

Condizione necessaria e sufficiente affinchè una coppia di variabili casuali sia indipendente è che:

- $F(a,b) = F_X(a)F_Y(b) forall a,b in RR$

oppure

- se $(X,Y)$ sono una coppia di variabili casuali discrete: $p(a,b) = p_X(a)p_Y(b) forall a,b in RR$
- se $(X,Y)$ sono congiuntamente continue: $f(a,b) = f_X(a)f_Y(b) forall a,b in RR$

#pagebreak()

== Valore medio di una variabile casuale

Data una variabile casuale $X$, si definisce valore atteso o valore medio di $X$, se esiste, il numero:

$
E[X] =
cases(
  sum^n_(i=1) x_i p(x_i) & "se" X in {x_1, dots, x_n} "(è una variabile casuale discreta)",
  integral^(+infinity)_(-infinity) x f(x) d x & "se" X "è una variabile casuale continua",
)
$

=== Proprietà

- Data una variabile casuale $X$, sia $Y = h(X)$ una variabile casuale funzione della prima, allora:

$
E[Y] = E[h(X)] =
cases(
  sum^n_(i=1) h(x_i) p(x_i) & "con" X in {x_1, dots, x_n},
  integral^(+infinity)_(-infinity) h(x) f(x) d x & "se" X "è una variabile casuale continua",
)
$

- Data una variabile casuale $X$ e due numeri reali $alpha$ e $beta$:

$ E[alpha X + beta] = alpha E[X] + beta $

- Date due variabil casuali $X$ e $Y$ e definita una variabile casuale $Z = g(X,Y)$, allora:

$
E[Z] = E[g(X,Y)] =
cases(
  sum^n_(i=1) sum^m_(j=1) g(x_i, y_j) p(x_i, y_j) & "con" X in {x_1, dots, x_n} "e" Y in {y_1, dots, y_m},
  integral^(+infinity)_(-infinity) integral^(+infinity)_(-infinity) g(x,y) f(x,y) d x d y & "se" (X,Y) "è una coppia di variabili casuali continue",
)
$

- Date le variabili casuali $X$ e $Y$, sia $Z = X+Y$, allora:

$ E[Z] = E[X+Y] = E[X] + E[Y] arrow E[sum^n_(i=1) X_i] = sum^n_(i=1) E[X_i] $

== Momento $n$-esimo di una variabile casuale

Data una variabile casuale, si definisce (se esiste) il suo momento $n$-esimo come:

$ E[X^n] & n in NN $

#pagebreak()

== Varianza di una variabile casuale

Data una variabile casuale $X$ di valore medio $E[X]=mu$, si definisce varianza di $X$ (se esiste):

$ "Var"(X) = E[(X-mu)^2] $

- Se $X$ è una variabile casuale discreta: $"Var"(x) = sum^n_(i=1) (x_i-mu)^2 p(x_i)$
- Se $X$ è una variabile casuale continua: $"Var"(x) = integral^(+infinity)_(-infinity) (x-mu)^2 f(x) d x$

=== Proprietà

- $"Var"(X) >= 0$
- $"Var"(X) = E[X^2] - (E[X])^2$
- $"Var"(alpha X + beta) = alpha^2 "Var"(X) "se" alpha, beta in RR$

  - se $alpha = 0$, $"Var"(beta) = 0$
  - se $beta = 0$ o $beta != 0$, $"Var"(alpha X + beta) = alpha^2 "Var"(X)$

- Date due variabili casuali $X$ e $Y$:

$ "Cov"(X,Y) = E[(X-E[X])(Y-E[Y])] $

- Date due variabili casuali $X$ e $Y$:

$ "Var"(X+Y) = "Var"(X) + "Var"(Y) + 2 E[(X-E[X])(Y-E[Y])] = "Var"(X) + "Var"(Y) + 2 "Cov"(X,Y) $

== Covarianza di coppie di variabili casuali

Date due variabili casuali $X$ e $Y$, di valore medio $E[X]=mu_X, E[Y]=mu_Y$, si definisce covarianza di $(X,Y)$ (se esiste):

$ "Cov"(X,Y) = E[(X-mu_X)(Y-mu_Y)] $

La covarianza può assumere i seguenti valori, con il rispettivo significato:

- $"Cov"(X,Y) < 0$: al crescere (o decrescere) dei valori di una variabile casuale, decrescono (o crescono) quelli dell'altra
- $"Cov"(X,Y) = 0$: le variabili casuali sono scorrelate
- $"Cov"(X,Y) > 0$: al crescere (o decrescere) dei valori di una variabile casuale, crescono (o decrescono) quelli dell'altra

=== Proprietà

- $"Cov"(X,Y) = "Cov"(Y,X)$
- $"Cov"(X,X) = E[(X-mu_X)^2] = "Var"(X)$
- $"Cov"(X,Y) = E[X Y] - E[X]E[Y]$
- Date due variabili casuali indipendenti $X$ e $Y$: $"Cov"(X,Y) = 0$
- $"Cov"(alpha X,Y) = "Cov"(X, alpha Y) = alpha "Cov"(X,Y)$
- $"Cov"(sum^N_(i=1) X_i, sum^M_(j=1) Y_j) = sum^N_(i=1) sum^M_(j=1) "Cov"(X_i,Y_i)$
- $"Var"(sum^N_(i=1) X_i) = sum^N_(i=1) "Var"(X_i) + sum^N_(i=1) sum^N_(j=1 "con" i != j) "Cov"(X_i, X_j)$

== Coefficiente di correlazione di coppie di variabili casuali

Date due variabili casuali $X$ e $Y$ di valore atteso $E[X]$ e $E[Y]$, allora si dice coefficiente di correlazione di $X$ e $Y$:

$ "Corr"(X,Y) = "Cov"(X,Y) / sqrt("Var"(X)"Var"(Y)) in [-1, 1] $

#pagebreak()

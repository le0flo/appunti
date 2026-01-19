= Taylor

== Formula di Taylor

Data una funzione $f(x)$ si vuole approssimare con un polinomio.
Se $f(x)$ è derivabile $n$-volte, il polinomio può essere preso di grado $n$.
La formula di Taylor prevede che, una volta fissato $x_0$:

$ f(x) - p(x) = o((x - x_0)^n) "per" x \to x_0 $

$o((x - x_0)^n)$ è detto "resto di Peano".

== Polinomio di Taylor

Dati $f(x)$ derivabile $n$ volte, $x_0 in RR$:

$
f(x) =
f(x_0) +
D f(x_0)(x - x_0) +
(D^2 f(x_0)) / 2! (x - x_0)^2 +
dots +
(D^n f(x_0)) / n! (x - x_0)^n +
o((x - x_0)^n) "per" x arrow x_0
$

== Polinomi di funzioni comuni

Alcuni polinomi di Taylor di funzioni comuni rappresentati fino al 4° grado:

- $sin(x) arrow x - 1 / 6 x^3$
- $cos(x) arrow 1 - 1 / 2 x^2 - 1 / 24 x^4$
- $e^x arrow 1 + x + 1 / 2 x^2 + 1 / 6 x^3 + 1 / 24 x^4$
- $ln(1+x) arrow x - 1 / 2 x^2 + 1 / 3 x^3 - 1 / 4 x^4$
- $(1+x)^alpha arrow 1 + alpha t + (alpha(alpha - 1)) / 2 x^2 + (alpha(alpha - 1)(alpha - 2)) / 6 x^3 + (alpha(alpha - 1)(alpha - 2)(alpha - 3)) / 24 x^4$

== Resto secondo Lagrange

Oltre al "resto di Peano" esistono altri tipi di resto. Uno di questi è il "resto di Lagrange".

Dato $c in [x, x_0]$:

$
f(x) =
f(x_0) +
D f(x_0)(x - x_0) +
(D^2 f(x_0)) / 2! (x - x_0)^2 +
dots +
(D^n f(x_0)) / n! (x - x_0)^n +
(D^(n+1) f(c)) / ((n+1)!) (x - x_0)^(n+1)
"per" x arrow x_0
$

#pagebreak()

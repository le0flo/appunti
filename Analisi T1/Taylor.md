+++
weight = 6
+++

### Formula di Taylor

Data una funzione $f(x)$ si vuole approssimare con un polinomio.

Se $f(x)$ è derivabile $n$-volte, il polinomio può essere preso di grado $n$. La formula di Taylor prevede che, una volta fissato $x_0$:

$$
f(x) - p(x) = o((x - x_0)^n) \text{ per } x \to x_0
$$

$o((x - x_0)^n)$ è detto "resto di Peano".

### Polinomio di Taylor

Dati $f(x)$ derivabile $n$ volte, $x_0 \in \mathbb{R}$:

$$
f(x) =
f(x_0) +
Df(x_0)(x - x_0) +
\frac{D^2f(x_0)}{2!} (x - x_0)^2 +
\dots +
\frac{D^nf(x_0)}{n!} (x - x_0)^n +
o((x - x_0)^n)
\text{ per } x \to x_0
$$

### Polinomi di funzioni comuni

Alcuni polinomi di Taylor di funzioni comuni rappresentati fino al 4° grado:

- $\sin(x) \rightarrow x - \frac{1}{6}x^3$
- $\cos(x) \rightarrow 1 - \frac{1}{2}x^2 - \frac{1}{24}x^4$
- $e^x \rightarrow 1 + x + \frac{1}{2}x^2 + \frac{1}{6}x^3 + \frac{1}{24}x^4$
- $\ln(1+x) \rightarrow x - \frac{1}{2}x^2 + \frac{1}{3}x^3 - \frac{1}{4}x^4$
- $(1+x)^\alpha \rightarrow 1 + \alpha t  + \frac{\alpha(\alpha - 1)}{2}x^2 + \frac{\alpha(\alpha - 1)(\alpha - 2)}{6}x^3 + \frac{\alpha(\alpha - 1)(\alpha - 2)(\alpha - 3)}{24}x^4$

### Resto secondo Lagrange

Oltre al "resto di Peano" esistono altri tipi di resto. Uno di questi è il "resto di Lagrange".

Dato: $c \in [x, x_0]$:

$$
f(x) =
f(x_0) +
Df(x_0)(x - x_0) +
\frac{D^2f(x_0)}{2!} (x - x_0)^2 +
\dots +
\frac{D^nf(x_0)}{n!} (x - x_0)^n +
\frac{D^{n+1}f(c)}{(n+1)!} (x - x_0)^{n+1}
\text{ per } x \to x_0
$$

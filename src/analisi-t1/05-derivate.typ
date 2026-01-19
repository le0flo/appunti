= Derivate

== Rapporto incrementale

Data una funzione $f(x)$, un intervallo $h$, allora il rapporto incrementale è il rapporto tra $f(x + h) - f(x)$ e $h$.

$ Delta f = (f(x + h) - f(x)) / h $

== Derivata

La funzione $f(x)$ è derivabile, se esiste un limite finito al rapporto incrementale di essa.

$ exists "finito" lim_(Delta x arrow 0) (f(x + h) - f(x)) / h $

=== Notazioni

- $D f$
- $(d f) / (d x)$
- $f'$
- $f^((1))$
- $dot(f)$

Se $f(x)$ è derivabile $arrow f(x)$ è continua.

== Derivate di grado superiore

Data una funzione $f(x) arrow D f(x)$:

$ D f(x) arrow D(D f(x)) = D^2 f(x) $

=== Notazioni per derivate di grado superiore

- $(d^2 f) / (d x^2) = d / (d x) * (d f) / (d x)$
- $f''$
- $f^((2))$
- $dot.double(f)$

$ D^n f = (d^n f) / (d x^n) = f^((n)) $

- $D^2 f >= 0 arrow D f$ è crescente, la funzione è convessa.
- $D^2 f <= 0 arrow D f$ è decrescente, la funzione è concava.

#pagebreak()

== Derivate comuni

- $D c = 0$
- $D c x = c$
- $D(a x^2 + b x + c) = 2a x + b$
- $D x^n = n x^(n-1)$
- $D sin(x) = cos(x)$
- $D cos(x) = -sin(x)$
- $D tan(x) = 1 / cos^2(x) = 1 + tan^2(x)$
- $D e^x = e^x$
- $D ln(x) = 1 / x$
- $D arcsin(x) = 1 / sqrt(1 - x^2)$
- $D arccos(x) = - 1 / sqrt(1 - x^2)$
- $D arctan(x) = 1 / (1 + x^2)$
- $D sinh(x) = (e^x + e^(-x)) / 2 = cosh(x)$
- $D cosh(x) = (e^x - e^(-x)) / 2 = sinh(x)$
- $D tanh(x) = (cosh^2(x) - sinh^2(x)) / cosh^2(x) = 1 - tanh^2(x)$

== Regole di calcolo

- $f(x), g(x) arrow D(f + g) = D f + D g$
- $f(x), c arrow D(c f) = c * D f$
- $f(x) = sum_n^(k = 0) a_k x^k arrow D(f) = sum_n^(k = 1) a_k k x^(k - 1)$
- $f(x), g(x) arrow D(f * g) = (D f)g + f(D g)$
- $f(x), g(x) arrow D(f / g) = ((D f)g - f(D g)) / g^2$
- $f(x), g(x) arrow D(f o g) = D f(g) * D g$
- $f(x) arrow D f^(-1) = 1 / (D f(f^(-1)(x)))$

#pagebreak()

= Integrali

== Definizione

Data una funzione $f(x)$, troviamo una funzione $F(x)$ tale che $D F(x) = f(x)$.

Dato $c in RR$:

$ D F = D(F + c) arrow f = f + 0 $

== Notazioni

- $integral f$
- $integral f(x)d x$
- $integral f d x$

== Integrali comuni

- $integral x^alpha d x = (x^(alpha + 1)) / (alpha + 1) + c : alpha != -1$
- $integral 1 / x d x = ln(|x|) + c : alpha = -1$
- $integral e^x d x = e^x + c$
- $integral sin(x) d x = -cos(x) + c$
- $integral cos(x) d x = sin(x) + c$
- $integral 1 / sqrt(1 - x^2) d x = arcsin(x) + c$
- $integral - 1 / sqrt(1 - x^2) d x = arccos(x) + c$
- $integral 1 / (1 + x^2) d x = arctan(x) + c$
- $f(x), g(x); alpha, beta in RR arrow integral (alpha f + beta g) d x = alpha integral f d x + beta integral g d x$

== Integrazione per parti

Dati $F(x), G(x)$:

$ integral (D F) * G d x = F G - integral F * (D G) d x $

== Cambiamento di variabile

Dati $F(x), G(x)$:

$ integral D F(G(x)) * D G(x) d x = D F(G(x)) + c $

#pagebreak()

== Sostituzioni con tangente

Dato $t = tan(x / 2)$:

- $d x = 2 / (1 + t^2) d t$
- $sin(x) = (2t) / (1 + t^2)$
- $cos(x) = (1 - t^2) / (1 + t^2)$

Dato $t = tan(x)$:

- $d x = 1 / (1 + t^2) d t$
- $sin(x) = dots$
- $cos(x) = dots$

#pagebreak()

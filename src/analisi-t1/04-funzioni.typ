= Funzioni

== Approssimazione lineare

Un'errore si indica con un "o piccolo".

$ o(1) arrow "è una funzione che tende a 0 per" h arrow 0 $

La notazione "o piccolo" indica un comportamento piuttosto che una valore arbitrario.

Dato $n in NN$:

$
g(h) = o(h^n) "per" h arrow 0 arrow
g(h) / h^n arrow 0 "per" h arrow 0 arrow
g(h) / h^n = o(1) "per" h arrow 0
$

== Punti critici

- Data una funzione derivabile $f(x)$, $x_0$ è un punto critico di essa se $D f(x_0) = 0$.
- Data una funzione derivabile $f(x)$, i punti di massimo e minimo locale sono punti critici.

== Teorema di Rolle

Dati $f,g : [a,b] arrow RR$, continua su $[a,b]$ e derivabile in $]a,b[$,  $f(a) = f(b)$:

$ exists c in ]a,b[ : D f(c) = 0 $

== Teorema di Weierstrass

Dati $f,g : [a,b] arrow RR$, continua su $[a,b]$:

$ exists "un massimo ed un minimo di" f $

== Teorema di Lagrange

Dati $f,g : [a,b] arrow RR$, continua su $[a,b]$ e derivabile in $]a,b[$:

$ exists c in ]a,b[ : D f(c) = (f(b)- f(a)) / (b - a) $

== Teorema De l'Hopital

Dati $f,g : [-infinity,+infinity], lim_(x arrow x_0) f(x) = 0 = lim_(x arrow x_0) g(x)$:

$
lim_(x arrow x_0) f(x) / g(x) =
lim_(x arrow x_0) (D f(x)) / (D g(x)) =
L in [-infinity, +infinity]
$

== Teorema di Cauchy

Dati $f,g : [a,b] arrow RR$, continua su $[a,b]$ e derivabile in $]a,b[$:

$
exists c in ]a,b[ :
(f(b) - f(a)) D g(c) = (g(b) - g(a)) D f(c) arrow
(D f(c)) / (D g(c)) = (f(b) - f(a)) / (g(b) - g(a))
$

#pagebreak()

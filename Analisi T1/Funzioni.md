### Approssimazione lineare

Un'errore si indica con un "o piccolo".

$$
o(1) \implies \text{è una funzione che tende a 0 per } h \to 0
$$

La notazione "o piccolo" indica un comportamento piuttosto che una valore arbitrario.

Dato $n \in \mathbb{N}$:

$$
g(h) = o(h^n) \text{ per } h \to 0 \implies
\frac{g(h)}{h^n} \to 0 \text{ per } h \to 0 \implies
\frac{g(h)}{h^n} = o(1) \text{ per } h \to 0
$$

### Punti critici

- Data una funzione derivabile $f(x)$, $x_0$ è un punto critico di essa se $Df(x_0) = 0$.
- Data una funzione derivabile $f(x)$, i punti di massimo e minimo locale sono punti critici.

### Teorema di Rolle

Dati: $f,g : [a,b] \to \mathbb{R}$, continua su $[a,b]$ e derivabile in $]a,b[$,  $f(a) = f(b)$:

$$
\exists \space c \in \space ]a,b[ \space : Df(c) = 0
$$

### Teorema di Weierstrass

Dati: $f,g : [a,b] \to \mathbb{R}$, continua su $[a,b]$:

$$
\exists \text{ un massimo ed un minimo di }f
$$

### Teorema di Lagrange

Dati: $f,g : [a,b] \to \mathbb{R}$, continua su $[a,b]$ e derivabile in $]a,b[$:

$$
\exists \space c \in \space ]a,b[ \space : Df(c) = \frac{f(b)- f(a)}{b - a}
$$

### Teorema De l'Hopital

Dati: $f,g : [-\infty,+\infty], \space \lim_{x \to x_0} f(x) = 0 = \lim_{x \to x_0} g(x)$:

$$
\lim_{x \to x_0} \frac{f(x)}{g(x)} =
\lim_{x \to x_0} \frac{Df(x)}{Dg(x)} =
L \in [-\infty,+\infty]
$$

### Teorema di Cauchy

Dati: $f,g : [a,b] \to \mathbb{R}$, continua su $[a,b]$ e derivabile in $]a,b[$:

$$
\exists \space c \in \space ]a,b[ \space :
(f(b) - f(a))Dg(c) = (g(b) - g(a))Df(c) \implies
\frac{Df(c)}{Dg(c)} = \frac{f(b) - f(a)}{g(b) - g(a)}
$$

# Integrale

Data una funzione $f(x)$, troviamo una funzione $F(x)$ tale che $DF(x) = f(x)$.

Dato $c \in \mathbb{R}$:

$$
DF = D(F + c) \implies f = f + 0
$$

### Notazioni

- $\int f$
- $\int f(x)dx$
- $\int fdx$

### Integrali comuni

- $\int x^\alpha dx = \frac{x^{\alpha + 1}}{\alpha + 1} + c : \alpha \neq -1$
- $\int \frac{1}{x} dx = \ln|x| + c : \alpha = -1$
- $\int e^x dx = e^x + c$
- $\int \sin(x) dx = -\cos(x) + c$
- $\int \cos(x) dx = \sin(x) + c$
- $\int \frac{1}{\sqrt{1 - x^2}} dx = \arcsin(x) + c$
- $\int -\frac{1}{\sqrt{1 - x^2}} dx = \arccos(x) + c$
- $\int \frac{1}{1 + x^2} dx = \arctan(x) + c$
- $f(x), g(x); \alpha, \beta \in \mathbb{R} \rightarrow \int (\alpha f + \beta g)dx = \alpha \int fdx + \beta \int gdx$

### Integrazione per parti

Dati $F(x), G(x)$:

$$
\int (DF) * G dx = FG - \int F * (DG) dx
$$

### Cambiamento di variabile

Dati $F(x), G(x)$:

$$
\int DF(G(x)) * DG(x) dx = DF(G(x)) + c
$$

### Sostituzioni con tangente

Dato: $t = \tan(\frac{x}{2})$

- $dx = \frac{2}{1 + t^2}dt$
- $\sin(x) = \frac{2t}{1 + t^2}$
- $\cos(x) = \frac{1 - t^2}{1 + t^2}$

Dato: $t = \tan(x)$

- $dx = \frac{1}{1 + t^2}dt$
- $\sin(x) = \dots$
- $\cos(x) = \dots$
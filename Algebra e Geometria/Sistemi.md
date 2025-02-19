# Sistema lineare

Segue un esempio di sistema lineare generico a coefficienti in $\mathbb{K}$:

Dati: $a_{ij} \in \mathbb{K}, b_i \in \mathbb{K}$

$$
S: \begin{cases}
a_{11} x_1 + \dots + a_{1n} x_n = b_1 \\
\vdots \\
a_{m1} x_1 + \dots + a_{mn} x_n = b_m
\end {cases}
$$

Un sistema lineare può essere:

- Omogeneo: $b_1, \dots, b_m = 0$
- Non omogeneo: $\exists \ b \neq 0$

L'insieme delle soluzioni viene indicato come:

$$
W_S = \{ \vec{x} \in \mathbb{K}^n : S(\vec{x}) = 0 \}
$$

Semplificare un sistema significa ottenere un altro insieme di soluzioni $W_{S'}$ tale che:

$$
W_{S'} = W_S
$$

### Mosse di Gauss

1. Scambiare due righe: $R_i \leftrightarrow R_j$
2. Moltiplicare una riga per uno scalare: $R_i \to \lambda R_i : \lambda \in \mathbb{K}$
3. Sostituire una riga con se stessa sommata ad un multiplo di un'altra riga: $R_i \to R_i + \lambda R_j : \lambda \in \mathbb{K}$

Applicando le 3 mosse di Gauss ad un sistema lineare $S$, deriviamo il sistema $S'$ con il medesimo numero di soluzioni rispetto al sistema originale $S$.

### Matrice dei coefficienti

$$
A_S = A =
\begin{pmatrix}
a_{11} \dots a_{1n} \\
\vdots \space \ddots \space \vdots \\
a_{m1} \dots a_{mn}
\end{pmatrix}
\in M(m,n,\mathbb{K})
$$

### Vettore dei termini noti

$$
\vec{b} = (b_1, \dots, b_m) \in \mathbb{K}^m
$$

### Matrice del sistema

$$
C_S = C = ( A | \vec{b} ) = 
\begin{pmatrix}
a_{11} \dots a_{1n} \space b_1 \\
\vdots \space \ddots \space \vdots \space \space \space \vdots \\
a_{m1} \dots a_{mn} \space b_m
\end{pmatrix}
\in M(m,n,\mathbb{K})

$$

### Sistema lineare omogeneo associato

$$
S_0: \begin{cases}
a_{11} x_1 + \dots + a_{1n} x_n = 0 \\
\vdots \\
a_{m1} x_1 + \dots + a_{mn} x_n = 0
\end {cases}
$$

$$
W_S = \vec{x} + W_{S_0}
$$

### Rango

Il rango di un sistema $S$ è:

$$
rg(S)= dim\ span(C^1, \dots, C^n, \vec{b}) \subseteq \mathbb{K}^m
$$

Il rango è sempre minore del numero di righe $m$.
Se la matrice del sistema $C$ è in forma di "Gauss-Jordan":

$$
rg(S) = n\text{-pivot}
$$

Possiamo dire che:

$$
rg(S) \leq min(m, n)
$$

### Teorema di Rouché-Capelli

Dato un sistema lineare $S$ e il sistema lineare omogeneo associato $S_0$, $S$ ha la soluzione se e soltanto se:

$$
rg(S) = rg(S_0)
$$

Se $W_S \neq \emptyset$, allora la $dim(W_S) = n - rg(S_0)$.

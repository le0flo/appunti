+++
weight = 1
+++

### Principio di induzione

Il principio di induzione è un metodo generico per dimostrare un teorema qualsiasi con dominio in $\mathbb{N}$.
Il procedimento di prova per induzione prevede un affermazione o uguaglianza che dipende da $n$ e viene indicata con: $P(n)$.

Data l'affermazione $P(n)$, il principio prova la precedente, al verificarsi delle seguenti condizioni:

1. $P(0)$
2. $P(k)$

Se queste condizioni si verificano, allora: $P(n)$ è vera.

$$
\forall n \in \mathbb{N}
$$

### Principio del minimo

Ogni sottoinsieme di $\mathbb{N}$ ha un minimo.

### Principio del valore intermedio

Data una funzione continua $f(x)$ e due punti $f(a)$ e $f(b)$, allora:

$$
\exists c \in ] a, b [ : f(c) = \lambda
$$

### Piccole nozioni

- L'insieme dei numeri reali non è numerabile
- Radice aritmetica: $\sqrt{n} = m : m \in \mathbb{N}$
- Seno iperbolico: $\sinh(x) = \frac{e^x - e^{-x}}{2}$
- Coseno iperbolico: $\cosh(x) = \frac{e^x + e^{-x}}{2}$
- Tangente iperbolica: $\tanh(x) = \frac{\sinh(x)}{\cosh(x)}$

### Maggioranti e minoranti

Dato $\mathbb{A} = \{ a \in \mathbb{R} \}$:

- Maggiorante: $M \in \mathbb{R} \land \forall a \in \mathbb{A} : a \leq M$
- Minorante: $m \in \mathbb{R} \land \forall a \in \mathbb{A} : a \geq M$

Se l'insieme $\mathbb{A}$ ammette un maggiorante si dice superiormente limitato, se ammette un minorante si dice inferiormente limitato e se ammette entrambe si dice limitato.

- Il massimo di un insieme $\mathbb{A}$, se esiste, è il più piccolo dei maggioranti
- Il minimo di un insieme $\mathbb{A}$, se esiste, è il più grande dei minoranti

### Numeri complessi

$$
x^2 + 1 = 0, \text{ impossibile in } \mathbb{R}
$$

Si risolve introducendo $i$: $x^2 = -1 \to x = \sqrt{-1} \to i^2 = -1$.

Un numero complesso è composto da due parti:

- parte reale: $a \in \mathbb{R}$
- parte complessa: $i * b : b \in \mathbb{R}$

### Notazione dei numeri complessi

$$
z = a + ib
$$

### Teorema fondamentale dell'algebra

*Tesi*: $p(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x^1 + a_0$

*Ipotesi*: Il polinomio $p(x)$ ha $n$ radici in $\mathbb{C}$ tenendo in conto la moltiplicabilità: $a_0, \dots , a_n \in \mathbb{C}; a_n \neq 0$.

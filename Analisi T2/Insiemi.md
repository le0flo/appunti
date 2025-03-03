### Disuguaglianza di Cauchy-Schwarz

Dati: $x,y \in \mathbb{R}^n$

$$
|x*y| \leq \sqrt{(x*x)} * \sqrt{(y*y)}
$$

$\sqrt{(x*x)} = (x_1^2, \dots, x_n^2)^{\frac{1}{2}} =$ lunghezza del vettore $x$ o *norma*.

La disuguaglianza ci afferma che il valore assoluto del prodotto tra due vettori $x$ e $y$ è minore o uguale rispetto al prodotto tra le loro lunghezze.

### Proprietà delle norme

Dati: $x,y \in \mathbb{R}^n, \lambda \in \mathbb{R}$

1. $||x|| > 0 \implies x \neq 0$
2. $||x|| = 0 \implies x = 0$
3. $||\lambda x|| = |\lambda|*||x||$
4. $||x+y|| \leq ||x|| + ||y||$

### Distanza in $\mathbb{R}^n$

Dati: $x,y \in \mathbb{R}^n : x=(x_1, \dots, x_n), y=(y_1, \dots, y_n)$

$$
d(x,y) = ||x*y||
$$

### Proprietà della distanza

Dati: $x,y,z \in \mathbb{R}^n$

1. $d(x,y) \geq 0$
2. $d(y,x) = d(x,y)$
3. Disuguaglianza triangolare: $d(x,z) \leq d(x,y) + d(y,z)$

### "Palla"

Dati: $x \in \mathbb{R}^n, r > 0$

$$
B(x,r) = \{ y \in \mathbb{R}^n : d(x,y) < r \}
$$

### Cammino continuo

Dati: $A \leq \mathbb{R}^n$

$A$ è convesso se comunque io prendo $x,y \in A$, $\exists \alpha: [a, b] \to \mathbb{R}^n$ continuo tale che $\alpha(a) = x$, $\alpha(b) = y$ e il sostegno di $\alpha([a,b]) \subseteq A$
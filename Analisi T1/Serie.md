Sia $(a_n)_n$ una successione di numeri reali. Definiamo la successione $(s_n)_n$ associata:
- $s_0 = a_0$
- $s_1 = a_0 + a_1$
- $s_2 = a_0 + a_1 + a_2$
- $\vdots$
La successione delle somme parziali si chiama serie e si indica:
$$
\sum_{n = 0}^{+\infty} a_n \text{ oppure } \sum_{}^{} a_n
$$
I numeri $a_n$ si dicono termini della serie. Una serie può essere:
- Convergente: $\exists \lim_{n \to +\infty} s_n = A \in \mathbb{R}$
- Divergente $\exists \lim_{n \to \infty} s_n = \begin{cases} -\infty\\ +\infty\end{cases}$
- Indeterminata $\nexists  \lim_{n \to +\infty} s_n$
Data una serie $\sum_{}^{} a_n$, se cambio un numero finito di termini, la serie generata manterrà il carattere dell'originale.
### Serie geometrica
Dato $q \in \mathbb{R}$, allora:
$$
R_n := q^n \Rightarrow \sum_{n = 0}^{+\infty} q^n
$$
La serie geometrica converge soltanto se $|q| < 1$.
$$
\sum_{n}^{} q^n = \frac{1}{1 - q}
$$
### Convergenza di una serie
Una serie converge se e soltanto se $a_n \to 0$. La condizione precedente è necessaria ma non sufficiente per affermare la convergenza di una serie.
### Criterio di condensazione
$(a_n)_n, (b_n)_n$
$$
\forall n : 0 \leq a_n \leq b_n
$$
- se $b_n$ converge, anche $a_n$ converge.
- se $a_n$ diverge, anche $b_n$ diverge.
### Criterio di condensazione
$\sum_{n}^{} a_n$ converge se e soltanto se $\sum_{k = 0}^{+\infty} 2^k a_2k$ converge.
### Criterio del valore assoluto
Data una serie $\sum_{n}^{} a_n$, se la serie $\sum_{n}^{} |a_n|$ converge, anche la prima converge.
$$
|\sum_{n}^{} a_n| = \sum_{n}^{} |a_n|
$$
Una serie che viene dichiarata convergente usando questo criterio è detta assolutamente convergente.
### Criterio della radice
$(a_n)_n$
Se $\exists \space \lim_{n \to +\infty} \sqrt[n]{|a_n|} = L$, allora:
-  se $L < 1$ allora $\sum_{}^{} a_n$ converge
- se $L > 1$ allora $\sum_{}^{} a_n$ non converge
- se $L = 1$ allora non si può concludere nulla
### Criterio del rapporto
$(a_n)_n, a_n \neq 0$
Se $\exists \space \lim_{n \to +\infty} |\frac{a_n + 1}{a_n}| = L$, allora:
- se $L < 1$ allora $\sum_{}^{} a_n$ converge
- se $L > 1$ allora $\sum_{}^{} a_n$ non converge
- se $L = 1$ allora non si può concludere nulla
### Criterio di Leibniz
Se $(a_j)_j : a_j > 0 : a_j \geq a_j + 1 : \lim_{j \to +\infty} a_j = 0$, allora $\sum_{j = 1}^{+\infty} (-1)^j * a_j$ converge.
### Criterio del confronto asintotico
$(a_n)_n, \forall n : a_n \geq 0$
$(b_n)_n, \forall n : b_n > 0$
Se $\lim_{n \to +\infty} \frac{a_n}{b_n} = L > 0$, allora:
- $\sum_{n}^{} a_n < +\infty \Leftrightarrow \sum_{n}^{} b_n < +\infty$, entrambe convergono
- $\sum_{n}^{} a_n = +\infty \Leftrightarrow \sum_{n}^{} b_n = +\infty$, entrambe divergono
$(a_n)_n, \forall n : a_n \geq 0$
$p = n * a_n$
Se $\lim_{n \to +\infty} \frac{a_n}{\frac{1}{n^p}} = L > 0$, allora $\sum_{n}^{} a_n$ converge se $\sum_{n}^{} \frac{1}{n^p}$ converge; possibile converge se $p > 1$.
### Riferimenti
- [[Successioni]]

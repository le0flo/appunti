Un numero complesso viene rappresentato nel seguente modo:
$$
z = a + bi
$$
- $a$ è la parte reale
- $b$ è la parte immaginaria
- $i$ è l'unità immaginaria
$\mathbb{C} =$ insieme dei numeri complessi
$\mathbb{R} \subseteq \mathbb{C}$
### Operazioni con i numeri complessi
- Somma: $(a+bi) + (c+di) = (a+c) + (b+d)i$
- Moltiplicazione: $(a+bi) * (c+di) = (ac - bd) + (ad + bc)i$
### Simbologia
- $\bar{z}$ è il coniugato del numero reale $z \longrightarrow z = a+bi \implies \bar{z} = a-bi$
- $|z|$ è il modulo del numero reale $z \longrightarrow z = a+bi \implies |z| = \sqrt{a^2 + b^2} \in \mathbb{R}$
	- $z * \bar{z} = (a+bi)(a-bi) = a^2 + b^2 = |z|^2$
- $z^{-1}$ è l'inverso del numero reale $z \longrightarrow z = a+bi \implies z^{-1} = \frac{\bar{z}}{|z|^2}$
### Formula di Eulero
Dati $r \in \mathbb{R}$ e $M \in (0, 2\pi)$:
$$
z = r(\cos{M}) + i r(\sin{M}) \in \mathbb{C} = r(\cos{M} + i\sin{M}) = re^{iM} \implies |z| = r, \bar{z} = re^{-iM}
$$
e.g.:
- $e^{i\pi} + 1 = 0$
### Teorema fondamentale dell'algebra
Ogni polinomio a coefficienti complessi ammette una radice complessa.
$$
p(x) = a_0 + a_1 x + a_2 x^2 + \dots + a_n x^n
$$
- $n$ = grado del polinomio
- $a \in \mathbb{C}$ = coefficienti
- $\forall z \in \mathbb{C}$ possiamo considerare $p(z) = a_0 + a_1 z + a_2 z^2 + \dots + a_n z^n \in \mathbb{C}$

I vettori sono degli elementi di uno spazio vettoriale, perciò possono essere sommati tra di loro e moltiplicati per dei numeri detti scalari.
$\vec{v} = (x_1, y_1)$
$\vec{w} = (x_2, y_2)$
- Somma: $\vec{v} + \vec{w} = (x_1 + x_2, y_1 + y_2)$
- Moltiplicazione: $\lambda \vec{v} = (\lambda x_1, \lambda y_1)$
### Spazio vettoriale
Lo spazio vettoriale è una struttura algebrica composta da:
- Un campo $\mathbb{K}$ di elementi scalari
- Un insieme di vettori $\mathbb{V}$
- due operazioni binarie interne (solitamente somma $+$ e prodotto $*$)
	- $+: \mathbb{V} \times \mathbb{V} \to \mathbb{V}$
	- $*: \mathbb{K} \times \mathbb{V} \to \mathbb{V}$
Un spazio vettoriale è tale affinché $(\mathbb{V}, +)$ sia commutativo.
### Sottospazio vettoriale
Dati $\mathbb{K}$ campo, $V$ $\mathbb{K}$-spazio vettoriale e $W \subseteq V$, $W$ è un sottospazio vettoriale di $V$ se:

- $\vec{0} \in W$
- $\forall \ \vec{v}, \vec{w} \in W : \vec{v} + \vec{w} \in W$
- $\forall \ \lambda \in \mathbb{K} : \forall \ \vec{v} \in W : \lambda \vec{v} \in W$
### Formula di Grassman
La formula di Grassman è una relazione tra le dimensioni di due sottospazi di uno stesso spazio vettoriale di dimensione finita.
$$
dim(U + W) = dim U + dim W - dim U \wedge W
$$
### Somma diretta
$$
U \oplus W \text{ se } U \cap W = \{ \vec{0} \}
$$
$U$ e $W$ sono in somma diretta se e solo se:
$$
B_u \cup B_w = B_{u+w} : \text{ è una base di } U + W
$$
### Sottospazio affine
Un sottospazio affine di $V$ è un sottoinsieme nella forma:
$$
\mathbb{A} = \{ \vec{v} + \vec{w} : \vec{w} \in W \}
$$

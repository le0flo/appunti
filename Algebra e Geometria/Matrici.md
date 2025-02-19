Possiamo definire una matrice come una "griglia di numeri"
$$
a_{ij} \in \mathbb{K} = 
\begin{pmatrix}
a_{11} & a_{12} & \dots & a_{1n}\\
a_{21}\\
\vdots\\
a_{m1} & a_{m2} & \dots & a_{mn}
\end{pmatrix}
$$
Una matrice $m \times n$ dove $m$ sono le righe e $n$ sono le colonne
### Notazione
$$
A = M(m,n,\mathbb{K}) = (a_{ij}) : i = 1 \dots m : j = 1 \dots n
$$
- $A^i$ è la $i$-esima colonna $\in \mathbb{K}^m \to A = \begin{pmatrix} A^1 | \dots | A^n \end{pmatrix}$
- $A_j$ è la $j$-esima colonna $\in \mathbb{K}^n \to A = \begin{pmatrix} A_1\\ -\\ \vdots\\ -\\ A_m \end{pmatrix}$
### Pivot
Data una riga $R_i$ di una matrice $M(m,n,\mathbb{K})$, il pivot di $R_i$ è il primo coefficiente non nullo partendo da sinistra.
### Matrice a scalini
Data una matrice $M(m,n,\mathbb{K})$, essa può essere detta "a scalini" se $\forall i$, considerando la $i$-esima riga $R_i$ e il rispettivo pivot $a_{ij}$:
$$
a_{kh} = 0\ \forall
\begin{cases}
k > i\\
h < j
\end{cases}
$$
e.g.:
$$
\begin{pmatrix}
1 \space 1 \space 0 \space 0 \space 1\\
0 \space 1 \space 1 \space 0 \space 1\\
0 \space 0 \space 1 \space 1 \space 1\\
0 \space 0 \space 0 \space 1 \space 1\\
0 \space 0 \space 0 \space 0 \space 1\\
\end{pmatrix}
$$
### Rango
$A \in M(m,n,\mathbb{K})$
$$
rg(A)= dim\ span(A^1, \dots, A^n, \vec{b}) \leq \mathbb{K}^m
$$
- Se $A'$ è una matrice ottenuta da $A$ usando le mosse di Gauss, allora $rg(A') = rg(A)$
- $rg(A) \leq min(m,n)$
- $rgr(A) = dim\ span(A_1, \dots, A_m) \leq n :$ rango per riga
- $rgr(A') = rgr(A)$, se $A'$ è una matrice ottenuta usando le mosse di Gauss
### Trasposta
La trasposta di una matrice:
$$
A \in M(m,n,\mathbb{K}) = (a_{ij}) \implies {}^tA \in M(n,m,\mathbb{K}) = (a_{ji})
$$
### Sotto-matrice
La sotto-matrice $B$ di $A$ è una matrice $B \in M(k,h,\mathbb{K})$ con $k \leq m$ e $h \leq n$, ottenuta da $A$ togliendo $m - k$ righe e $n - h$ colonne.
### Matrice dei cofattori
$A \in M(m,n,\mathbb{K})$
$$
C_{ij} (A) \in M(m-1, n-1, \mathbb{K})
$$
La matrice dei cofattori di una matrice $A$ si ottiene togliendo la $i$-esima riga e la $j$-esima colonna dalla matrice $A$.
- se $B \leq A$, allora $rg(B) \leq rg(A)$
- $\forall$ combinazione lineare di $A^1,  \dots, A^n$ ottengo una combinazione lineare di $B^1, \dots, B^k$
### Determinante
$A \in M(n,\mathbb{K})$
Il determinante di $A$ è uno scalare che si può ottenere soltanto da matrici quadrate, e si ottiene nei seguenti modi:
1. $n = 1 \implies det A = a$
2. $n = 2 \implies det A = ad - bc$
3. $n \geq 3 \implies det A = \sum^{n}_{j=1} (-1)^{j+1} a_{1j} \ det C_{1j} (A)$
Per le matrici triangolare superiore, matrici diagonali e matrici identità:
$$
det A = \text{ prodotto degli elementi sulla diagonale}
$$
Se una matrice $A$ ha due righe o colonne uguali $\implies det A = 0$
### Determinante e le mosse di Gauss
Il determinante è una funzione che prende in entrata una matrice e restituisce uno scalare. Questa funzione si relaziona con le mosse di Gauss, nella seguente maniera:
1. Prima mossa: $A_i \leftrightarrow A_j \implies det(A') = -det(A)$
2. Seconda mossa: $A_i \rightarrow \lambda A_i \implies det(A') = \lambda det(A)$
3. Terza mossa: $A_i \rightarrow A_i + \lambda A_j \implies det(A') = det(A)$
### Moltiplicazione righe per colonne
Date due matrici generiche, generalmente è impossibile moltiplicarle. Se le matrici assumono le seguenti forme, allora la moltiplicazione è possibile:
- $A \in M(m,n,\mathbb{K})$
- $B \in M(n,k,\mathbb{K})$
$$
AB \in M(m,k,\mathbb{K})
$$

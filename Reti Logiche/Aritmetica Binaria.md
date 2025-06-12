+++
weight = 11
+++

### Numeri e aritmetica binaria senza segno

Come abbiamo visto, un numero senza segno $\mathbb{N}$ in una macchina digitale è rappresentato in notazione posizionale in base 2.
Altra differenza fondamentale con la rappresentazione a cui siamo abituati su carta, è che il numero di cifre disponibili è fisso e finito: l’hardware che uso stabilisce quanti segnali e quindi bit ho a disposizione per rappresentarlo.
Dati $n$ bit, i numeri senza segno rappresentabili sono compresi tra $0$ e $2^n - 1$.

La somma di due numeri a $n$ bit può non essere rappresentabile con il numero di bit disponibile (*overflow*).
La condizione di overflow è segnalata dall ultimo riporto (*carry out*).


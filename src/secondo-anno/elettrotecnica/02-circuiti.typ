= Circuiti elettrici

Ipotesi per l'analisi di un circuito elettrico:

+ $(d B) / (d t) = 0$ e $(d D) / (d t) = 0$, dove
  - $(d B) / (d t)$ è la variazione del campo magnetico nel tempo
  - $(d D) / (d t)$ è la variazione dell'induzione elettrica nel tempo
+ Circuito elettrico a parametri concentrati $"Lc" << lambda$, dove:
  - $"Lc"$ è la lunghezza caratteristica del circuito
  - $lambda = c / f$ = lunghezza d'onda $["m"]$ ($c tilde.eq 3 * 10^8$)

Sotto le precedenti ipotesi, gli elementi del circuito verranno rappresentati da multipoli.
Il circuito è una *interconnessione di multipoli*.

- I collegamenti tra elementi di un circuito sono considerati *collegamenti ideali*
- Un *nodo* è l'interconnessione tra 2 o più elementi (morsetti dell'elemento)
- Un *ramo* è un elemento collegato tra due nodi
- La *maglia* è un percorso chiuso di rami
  - Se una maglia non è tagliata da rami, viene detta *maglia elementare*
  - La maglia generalizzata è un percorso aperto di un numero qualsiasi di elementi chiuso da una variabile

Le grandezze fondamentali di un circuito sono l'intensità di corrente $i(t)$ e la tensione della corrente $v(t)$.

== Grandezze derivate

La potenza elettrica:

$ p(t) = v(t) * i(t) space ["W"] $

L'energia:

$ w(t) = integral^(t_2)_(t_1) p(t) d t space ["J"] $

== Convenzioni

Un elemento può essere rappresentato usando due convenzioni:

- Utilizzatore, ovvero il verso della intensità di corrente è *opposto* a quello della tensione
- Generatore, ovvero il verso della intensità di corrente è *uguale* a quello della tensione

Risolvere un circuito significa trovare tutte le grandezze caratteristiche $i(t), v(t), "etc"dots$.
Per fare ciò usiamo diversi strumenti:

- Leggi di Kirchhoff per analizzare la topologia del circuito
- Equazioni costitutive per analizzare i singoli elementi

== Leggi di Kirchhoff

=== Legge di Kirchhoff delle tensioni (LKT)

$ integral.cont_l E * d l = - integral.double_S (d B) / (d t) * hat(n) d S = 0 $

dove $E$ è un campo conservativo.

La somma algebrica delle tensioni lungo una linea chiusa è $0$.

$ sum^N_(k=1) v_k(t) = 0, forall t $

dove $N$ è il numero di elementi lungo la linea chiusa.

=== Legge di Kirchhoff delle correnti (LKC)

$ integral.surf_S (J + (d D) / (d t)) hat(n) d S = 0 $

La sommatoria delle correnti entranti è pari alla sommatoria delle correnti uscenti dalla superficie chiusa.

$ sum^N_(j=1) i_j = sum^M_(k=1) i_k $

dove:

- $sum^N_(j=1) i_j$ sono le correnti entranti
- $sum^M_(k=1) i_k$ sono le correnti uscenti

... e si può riscrivere come:

$ sum^N_(k=1) plus.minus i_k = 0 $

dove le correnti positive sono quelle entranti, mentre quelle negative rappresentano le correnti uscenti.

== Teorema di Tellegen

La somma delle potenze generate all'interno di un circuito è pari alla somma delle potenze assorbite:

$ sum^N_(i=1) P_i = sum^M_(k=1) P_k $

dove:

- $N$ è il numero di elementi a convenzione di generatore
- $M$ è il numero di elementi a convenzione di utilizzatore

Un'altra forma del teorema è:

$ sum^L_(p=1) v_p i_p = 0 $

dove:

- $L$ è il numero di lati nella rete

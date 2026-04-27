= Metodi di analisi

== Metodo algebrico

Il metodo base per l'analisi dei circuiti è il metodo algebrico.
Esso è composto dai seguenti passi.

+ Trovare gli $N$ nodi e $L$ lati
+ Individuare le $2L$ incognite ($L$ tensioni e $L$ correnti)
+ Individuare le $L$ equazioni caratteristiche per ogni lato
+ Trovare $N-1$ LKC ai nodi
+ Trovare $L-N+1$ LKT alle maglie elementari
+ Risolvere il sistema di equazioni (formato da $2L$ incognite e $2L$ equazioni indipendenti)

== Metodo dei potenziali di nodo

+ Assegnare un nodo di riferimento
+ Assegnare le tensioni a tutti i nodi eccetto quello di riferimento
+ Assegnare le correnti per ogni lato
+ Determinare le LKC a tutti i nodi eccetto quello di riferimento
+ Utilizzare le equazioni caratteristiche per scrivere le correnti di lato in funzione dei potenziali ai nodi
+ Sostituire le correnti calcolate nel punto (5) al punto (4) e risolvere le equazioni

== Teorema della sovrapposizione degli effetti

Dato l'ipotesi di linearità, le variabili di rete (effetti) possono essere calcolate come la sommatoria dei singoli contributi delle cause (generatori)
Un generatore alla volta, annullo gli altri e calcolo le incognite del circuito con il generatore isolato.

*Nota bene*: questo metodo non si può applicare al calcolo di potenze e altre quantità non lineari.

#pagebreak()

== Teorema di Thévenin

Date le ipotesi di linearità e una rete lineare da semplificare senza generatori dipendenti,
un circuito può essere rappresentato, rispetto a due morsetti generici,
come un bipolo dato dalla serie di un generatore ideale di tensione ed un resistore in serie.
Tale bipolo viene detto bipolo equivalente di Thévenin.

- Il valore del generatore di tensione equivalente $E_"TH"$ coincide con il valore della tensione misurata ai morsetti del bipolo quando ad essi non viene collegato nessun carico.
- Il valore del della resistenza equivalete $R_"TH"$ coincide con il valore della resistenza misurabile ai morsetti del bipolo quando i generatori della rete da semplificare sono passivati.

== Teorema di Norton

Date le medesime ipotesi del teorema di Thévenin, una rete lineare (circuito) può essere rappresentata,
rispetto a due morsetti generici, come un bipolo dato dal parallelo di un generatore ideale di corrente ed un resistore.
Tale bipolo viene detto bipolo equivalente di Norton.

- Il valore della corrente del generatore di Norton $A_N$ coincide con la corrente che fluisce tra i morsetti del bipolo quando il carico è cortocircuitato.
- Il valore della resistenza equivalente di Norton $R_N$ coincide con il valore di resistenza misurabile ai morsetti del bipolo quando i generatori della rete da semplificare sono passivati.

== Teorema di Millman

Mentre i teoremi di Thévenin e Norton hanno validità generale (sotto alcune ipotesi), il teorema di Millman si applica a circuiti di una specifica tipologia.
L'ipotesi fondamentale è quella in cui si analizza una rete lineare con un numero qualsiasi di lati tutti connessi in parallelo (soltanto 2 nodi).

La tensione tra i due nodi è pari al rapporto della sommatoria delle correnti di circuito di ogni lato sulla sommatoria delle conduttanze di ogni lato.

$ v_(a b) = (sum^K_(i=0) e_i / R_i + sum^M_(j=1) i_j) / (sum^N_(p=1) 1 / R_p) $

#pagebreak()

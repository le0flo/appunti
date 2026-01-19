= Informazione

== Codifica binaria

In una macchina digitale, le informazioni vengono rappresentate sotto forma di bit (0 e 1).
Questo sistema è detto sistema binario.
Ci sono diversi modi per rappresentare le informazioni. Prendendo come esempio il numero 28:

#table(
  columns: 3,
  [*Sistema binario*], [*Sistema decimale*], [*Sistema esadecimale*],
  $11100$, $28$, $1C$
)

Viene detto numero in base $n$ il numero che viene rappresentando usando l'$n$-esimo sistema numerico.

== Cambio di base

Per convertire un numero da un sistema all'altro, esistono diversi metodi, dette conversioni. Alcune di queste sono:

=== Conversione iterativa

In base $n$: si divide un numero in parte intera e parte decimale.

- *Parte intera*: si divide per $n$ il numero iniziale, ottenendo un quoziente intero e un resto (0 o 1); si segna il resto e si ripete l'operazione dividendo il quoziente intero precedente, finché esso risulterà $= 0$; per finire, riscrivere tutti i resti "al contrario" (partendo dall'ultimo calcolato e arrivando al primo).
- *Parte decimale*: si prende il numero iniziale e lo si moltiplica per $n$, segnando separatamente la parte intera e decimale del risultato. Poi bisogna ripetere lo stesso procedimento usando la parte decimale segnata precedentemente come fattore, iterando finché la parte decimale risulterà $= 0$ oppure in base alla precisione decisa.

== Numeri binari

Per rappresentare un numero senza segno $N$ su una macchina digitale, usiamo il sistema binario, base $2$.
La quantità di numeri che possiamo rappresentare è determinata dalla quantità di bit che vengono assegnati.
Per un numero $n$ finito di bit, la quantità di numeri senza segno $N$ in base $2$ è:

$ 2^n - 1 $

== Problemi con la conversione A/D

Nel mondo reale, l'allineamento meccanico perfetto è impossibile, ovvero due segnali non possono variare contemporaneamente.
Per evitare letture scorrette nei punti di disallineamento, è opportuno utilizzare configurazioni relative a posizioni consecutive che differiscono di un solo valore.

#pagebreak()

== Codice di Gray

A differenza del codice binario, il codice di Gray è una configurazione di bit che codifica informazioni adiacenti tali che differiscono soltanto di 1 bit.
Viene usato generalmente per ridurre errori nella codifica da analogico a digitale.

== Transcodifica

Possiamo dividere i codici in esterno e interno.

- *Esterno*: ridondante e standardizzato
- *Interno*: non ridondante

== Codici standard e proprietari

- *Standard*: Un codice scelto da norme internazionali o da un costruttore molto diffuso, e permette a tutti di adottare quel codice per rendere le proprie informazioni facilmente interpretabili
- *Proprietario*: Un codice scelto dal costruttore con l'unico scopo di interconnettere i propri prodotti.

#pagebreak()

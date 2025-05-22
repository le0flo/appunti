+++
weight = 6
+++

### Definizione

La mappa di Karnaugh è una rappresentazione bidimensionale della tabella della verità di una funzione di 2,3,4 variabili, i cui valori sono elencati sui bordi in maniera tale che due configurazioni consecutive differiscano per il valore di un solo bit (*codice di Gray*).

e.g.

Uscita R del Full Adder:

| a   | b   | r   | R   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 0   | 0   |
| 0   | 1   | 1   | 1   |
| 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 1   |
| 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 1   |

La mappa di Karnaugh associata è:

| a\br | 00  | 01  | 11  | 10  |
| ---- | --- | --- | --- | --- |
| 0    | 0   | 0   | 1   | 0   |
| 1    | 1   | 1   | 1   | 1   |

Lo scopo della mappa è quello di identificare graficamente, configurazioni adiacenti, ovvero che differiscono per un solo bit, aventi il medesimo valore di uscita (*utile per trovare a sua volta implicanti e implicati primi essenziali*).

### Adiacenza tra celle

Una coppia di celle adiacenti su una mappa di Karnaugh è detta tale quando differiscono per un solo bit. Il numero di celle adiacenti corrisponde al numero di ingressi.

e.g.

O è la cella scelta, X sono le celle considerate adiacenti ad O.

*2 ingressi*:

| a\b | 0   | 1   |
| --- | --- | --- |
| 0   | O   | X   |
| 1   | X   |     |

*3 ingressi*:

| a\bc | 00  | 01  | 11  | 10  |
| ---- | --- | --- | --- | --- |
| 0    |     |     | X   |     |
| 1    |     | X   | O   | X   |

*4 ingressi*:

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   |     | X   | O   |
| 01    |     |     |     | X   |
| 11    |     |     |     |     |
| 10    |     |     |     | X   |

*5 ingressi*:

$a=0$

| bc\de | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    |     |     |     |     |
| 01    |     | X   |     |     |
| 11    | X   | O   | X   |     |
| 10    |     | X   |     |     |

$a=1$

| bc\de | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    |     |     |     |     |
| 01    |     |     |     |     |
| 11    |     | X   |     |     |
| 10    |     |     |     |     |

### Manipolazione algebrica per via grafica

Due termini di una espressione canonica (SP o PS) corrispondenti a configurazioni diverse che individuano celle adiacenti, equivalgono ad un unico termine con un letterale in meno (*quello che cambia valore*).

e.g.

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   | X   | X   | X   |
| 01    | X   | X   | X   | X   |
| 11    | X   | X   | X   | 1   |
| 10    | X   | X   | X   | 1   |

- Espressione canonica SP: $\dots + abcd' + ab'cd' + \dots$
- Diventa: $\dots + acd' + \dots$

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   | X   | X   | X   |
| 01    | X   | X   | X   | X   |
| 11    | X   | 0   | 0   | X   |
| 10    | X   | X   | X   | X   |

- Espressione canonica PS: $\dots * (a'b'cd') * (a'b'c'd') * \dots$
- Diventa: $\dots + a'b'd' + \dots$

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   | X   | X   | X   |
| 01    | X   | 1   | 1   | X   |
| 11    | X   | 1   | 1   | X   |
| 10    | X   | X   | X   | X   |

- Espressione canonica SP: $\dots + a'bc'd + a'bcd + abc'd + abcd + \dots$
- Diventa: $\dots + a'bd + abd + \dots$
- Che a sua volta diventa: $\dots + bd + \dots$

### Raggruppamenti rettangolari

Un raggruppamento rettangolare (*RR*) di ordine $p$ è un insieme di $2^p$ celle appartenenti ad una mappa, all'interno del quale ogni cella ha esattamente $p$ celle adiacenti.
Un *RR* di ordine $p$ costituito da celle contenenti valore $1$ o una condizione di indifferenza, individua un implicante della funzione. Nel prodotto compaiono solo le $(n-p)$ variabili che rimangono costanti nelle coordinate del *RR*, in forma vera se valgono $1$, in forma complementata se valgono $0$.
Lo stesso vale se il *RR* è costituito da celle con valore $0$. Esso costituisce un implicato della funzione e nel prodotto compariranno $(n-p)$ variabili in forma vera se valgono $0$ e in forma complementata se valgono $1$.
Se un *RR* non è interamente incluso in un'altro *RR* di ordine superiore, allora esso individua un implicante/implicato primo.

e.g.

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | -   | 1   | 1   | -   |
| 01    | -   | 1   | 1   | -   |
| 11    | -   | 1   | 1   | -   |
| 10    | 0   | 1   | 1   | -   |

- il *RR* dove $bd$ assumono valore $1$ non è un implicante primo
- il *RR* dove $d$ assume valore $1$ è un implicante primo.

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | 0   | x   | x   | 0   |
| 01    | 0   | x   | x   | 0   |
| 11    | 0   | x   | x   | 0   |
| 10    | 0   | x   | 1   | 0   |

- il *RR* $c+d$ non è un implicato primo
- il *RR* $c'+d$ non è un implicato primo
- il *RR* $d$ è un implicato primo

### Copertura minima

La copertura di una funzione su una mappa è l'insieme di RR che coprono tutte le celle di valore 1 o 0.
Una copertura può individuare una possibile struttura per un'espressione (SP per gli 1, PS per gli 0).
Una copertura minima è una copertura costituita dal numero minore possibile di RR di dimensione massima. Questa corrisponde alla espressione minima.

e.g.

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | 1   | 1   | 0   | 0   |
| 01    | 1   | -   | 0   | -   |
| 11    | 1   | 1   | 0   | 1   |
| 10    | 1   | 1   | 0   | 1   |

La copertura $c' + acd'$ è valida ma non è una copertura minima. Infatti se prendiamo in considerazione la copertura $c' + ad'$, essa è una copertura valida con lo stesso numero di RR ma entrambi di dimensione massima.

### Analisi di un circuito con le mappe

1. Si scrive l'espressione associata allo schema dato e, se necessario, la si manipola fino ad ottenere una espressione SP o PS.
2. Si predispone una mappa di dimensioni adeguate e si tracciano sulla mappa i RR che corrispondono ai termini dell'espressione.
3. Nelle celle coperte dagli RR, si indica valore 1 se l'espressione analizzata è SP, 0 in caso sia una espressione PS. Nelle celle non coperte si mette il valore opposto (0 con le SP, 1 con le PS).

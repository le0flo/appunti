### Definizione

La mappa di Karnaugh è una rappresentazione bidimensionale della tabella della verità di una funzione di 2,3,4 variabili, i cui valori sono elencati sui bordi in maniera tale che due configurazioni consecutive differiscano per il valore di un solo bit (*codice di Gray*).

e.g.

Uscita R del Full Adder

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

*2 ingressi*

| a\b | 0   | 1   |
| --- | --- | --- |
| 0   | O   | X   |
| 1   | X   |     |

*3 ingressi*

| a\bc | 00  | 01  | 11  | 10  |
| ---- | --- | --- | --- | --- |
| 0    |     |     | X   |     |
| 1    |     | X   | O   | X   |

*4 ingressi*

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   |     | X   | O   |
| 01    |     |     |     | X   |
| 11    |     |     |     |     |
| 10    |     |     |     | X   |

*5 ingressi*

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

Espressione canonica SP: $\dots + abcd' + ab'cd' + \dots$
Diventa: $\dots + acd' + \dots$

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   | X   | X   | X   |
| 01    | X   | X   | X   | X   |
| 11    | X   | 0   | 0   | X   |
| 10    | X   | X   | X   | X   |

Espressione canonica PS: $\dots * (a'b'cd') * (a'b'c'd') * \dots$
Diventa: $\dots + a'b'd' + \dots$

| ab\cd | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| 00    | X   | X   | X   | X   |
| 01    | X   | 1   | 1   | X   |
| 11    | X   | 1   | 1   | X   |
| 10    | X   | X   | X   | X   |

Espressione canonica SP: $\dots + a'bc'd + a'bcd + abc'd + abcd + \dots$
Diventa: $\dots + a'bd + abd + \dots$
Che a sua volta diventa: $\dots + bd + \dots$

### Raggruppamenti rettangolari

*TODO*
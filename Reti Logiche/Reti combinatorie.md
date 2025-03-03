### Definizione

Una rete logica la dove l'uscita dipende unicamente dagli ingressi correnti

### Comportamento

La tabella della verità, con tutte le combinazioni di ingressi possibili e i rispettivi segnali d'uscita

### Struttura

I componenti che realizzano la rete logica indicata. Può essere dichiarata sotto forma di:

- Espressione (*esempio: $z = (x \equiv y)(x \oplus w)$*)
- Schema logico

### Dalle Tabelle di Verità a Espressioni

Uno dei metodi per passare da una tabella di comportamento ad una espressione, è mediante l'uso delle così dette *espressioni canoniche*.

### Espressioni canoniche

- Espressione canonica SP: (*Somma di prodotti, 1° forma canonica*)
- Espressione canonica PS: (*Prodotto di somme, 2° forma canonica*)

### Full adder

Una rete logica con 3 ingressi ($a,b,r$) e due uscite ($S,R$). Questo rappresenta:

- uscita $S = 1$ quando il numero di 1 sui suoi ingressi è dispari
- uscita $R = 1$ quando in ingrasso ci sono due o più 1

Questa rete è combinatoria perchè l'uscita dipende solo dagli ingressi attuali. Sarà una rete fondamentale per realizzare operazioni aritmetiche tra numeri binari.

| a   | b   | r   | S   | R   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 1   | 0   |
| 0   | 1   | 0   | 1   | 0   |
| 0   | 1   | 1   | 0   | 1   |
| 1   | 0   | 0   | 1   | 0   |
| 1   | 0   | 1   | 0   | 1   |
| 1   | 1   | 0   | 0   | 1   |
| 1   | 1   | 1   | 1   | 1   |

Per trovare un'espressione, prendiamo come esempio l'output $S$:

$$
S = 1 \implies Riga_1, Riga_2, Riga_4, Riga_7
$$
Perciò $S = 1$ quando:

- $C_1 = 1 \implies a = 0$, $b = 0$, $r = 0$
- $C_2 = 1 \implies a = 0$, $b = 1$, $r = 0$
- $C_4 = 1 \implies a = 1$, $b = 0$, $r = 0$
- $C_7 = 1 \implies a = 1$, $b = 1$, $r = 1$

Che possiamo trasformare in:

- $C_1 = 1 \implies a' = 1$, $b' = 1$, $r' = 1$
- $C_2 = 1 \implies a' = 1$, $b = 1$, $r' = 1$
- $C_4 = 1 \implies a = 1$, $b' = 1$, $r' = 1$
- $C_7 = 1 \implies a = 1$, $b = 1$, $r = 1$

Che ci permette di ottenere:

$$
S = C_1 + C_2 + C_4 + C_7 = a'b'r' + a'br' + ab'r' + abr
$$

Usando lo stesso ragionamento otteniamo che:

$$
R = a'br + ab'r + abr' + abr
$$
+++
weight = 4
+++

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

### Notazione simbolica

- Mintermine: il vettore dei bit, rappresentati mediante il loro indice, che assumono il valore 1;
- Maxtermine: il vettore dei bit, rappresentati mediante il loro indice, che assumono il valore 0.

Mintermine e maxtermine sono complementari tra loro.
Una configurazione è o un mintermine o un maxtermine.
Il pedice degli operatori $\Sigma$ e $\Pi$ corrisponde al numero di ingressi che danno origine al mintermine o maxtermine.

e.g.

*Full adder*:

| i   | a   | b   | r   | S   | R   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 1   | 1   | 0   |
| 2   | 0   | 1   | 0   | 1   | 0   |
| 3   | 0   | 1   | 1   | 0   | 1   |
| 4   | 1   | 0   | 0   | 1   | 0   |
| 5   | 1   | 0   | 1   | 0   | 1   |
| 6   | 1   | 1   | 0   | 0   | 1   |
| 7   | 1   | 1   | 1   | 1   | 1   |

- $S(a,b,r) = \Sigma_3 m(1,2,4,7)$
- $S(a,b,r) = \Pi_3 M(0,3,5,6)$

- $R(a,b,r) = \Sigma_3 m(3,5,6,7)$
- $R(a,b,r) = \Pi_3 M(0,1,2,4)$

### Equivalenza tra espressioni

L'equivalenza tra due espressioni si indica con:

$$
E_1 = E_2
$$

Si può definire tale se e solo se le espressioni esprimono la stessa funzione (o TdV).

### Funzioni incomplete

Anche delle espressioni che forniscono una valutazione uguale, limitate al dominio di una funzione incompleta, sono dette equivalenti.
Un esempio di funzione incompleta è un encoder da $1$ a $N$ bit.
Prendendo come esempio più specifico, un encoder con 3 ingressi, a seconda del valore che assumono i bit di uscita delle configurazioni non rilevanti (fuori dal dominio della funzione), l'espressione risultante cambia.

### Equivalenze notevoli

Proprietà della somma e del prodotto logico:

- Commutativa: $x+y = y+x$ e $x*y = y*x$
- Associativa: $(x+y)+z = x+y+z$ e $(x*y)*z = x*y*z$ (*utile per ridurre il fan-in*)
- Distributiva: $(x*y) + (x*z) = x*(y+z)$ e $(x+y) * (x+z) = x+(y*z)$ (*valida soltanto in algebra binaria*)
- Idempotenza: $x+x = x$ e $x*x = x$
- Identità: $x+0 = x$ e $x*1 = x$
- Limite: $x+1 = 1$ e $x*0 = 0$
- Involuzione: $(x')' = x$ (*viene usata per amplificare il segnale*)
- Limitazione: $x+x' = 1$ e $x * x' = 0$
- Combinazione: $xy + xy' = x$ e $(x+y) * (x+y') = x$
- Prima legge di *De Morgan*: $(x+y)' = x'*y'$
- Seconda legge di *De Morgan*: $(x*y)' = x'+y'$
- Consenso: $xy+x'z+yz = xy+x'z$ e $(x+y)*(x'+z)*(y+z) = (x+y)*(x'+z)$

### Manipolazione algebrica di espressioni

Data l'espressione per il ritorno di un full adder:

$$
R = a'br + ab'r + abr' + abr
$$

Essa può essere semplificata usando i seguenti passaggi:

1. Distribuzione: $a'br + ab'r + ab*(r'+r)$
2. Limitazione: $a'br + ab'r + ab1$
3. Identità: $a'br + ab'r + ab$

Oppure una versione ancora più semplificata è:

1. Idempotenza: $a'br + ab'r + abr' + abr + abr + abr$
2. Distribuzione: $br*(a'+a) + ar*(b'+b) + ab*(r'+r)$
3. Limitazione: $br1 + ar1 + ab1$
4. Identità: $br + ar + ab$

Rispetto all'espressione originale $R = a'br + ab'r + abr' + abr$, da una rete formata da:

- 1 OR da 4 ingressi
- 4 AND da 3 ingressi
- 3 NOT

Siamo passati, usando l'espressione $R = br + ar + ab$, ad una rete composta da:

- 1 OR a 3 ingressi
- 3 AND da 2 ingressi

### Il problema della sintesi

La sintesi è il processo per individuare l'espressione "migliore" per la realizzazione della funzione assegnata.
"Migliore" può essere definito con criteri anche opposti tra loro, come:

- Rapidità di progetto
- Massima flessibilità
- Massima velocità
- Minima complessità

Abbiamo due possibili obbiettivi:

- Reti di costo minimo (*Massima velocità e Minima complessità*)
- Reti programmabili (*Rapidità di progetto e Massima flessibilità*)

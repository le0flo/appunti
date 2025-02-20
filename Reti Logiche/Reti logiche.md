### Rete logica e Gate

Una rete logica è un'astrazione che rappresenta una combinazione di "interruttori" che elaborano segnali binari.
Definiamo "gate" tutti i componenti elementari di cui non conosciamo il *come* sono fatti, ma il loro comportamento.
Il numero di funzioni diverse di $n$ ingressi binari con un'uscita binaria è:

$$
2^{2^n}
$$

I componenti elementari, o funzioni possibili, limitandosi ai componenti con un unico segnale binario di ingresso $x$ sono $4, (n = 1)$.

e.g.

| x   | $f_1$ | $f_2$ | $f_3$ | $f_4$ |
| --- | ----- | ----- | ----- | ----- |
| 0   | 0     | 0     | 1     | 1     |
| 1   | 0     | 1     | 0     | 1     |

Ogni gate è descritto da:

- tabella della verità, con ogni riga che riporta un possibile ingresso e la corrispondente uscita
- simbolo circuitale, per rappresentarlo graficamente e distinguerlo
- espressione, un modo di rappresentare la relazione tra ingressi ed uscite

### Gate NOT

Tabella della verità:

| x   | y   |
| --- | --- |
| 0   | 1   |
| 1   | 0   |

Espressione: $y = \overline{x}$ oppure $y = x'$

### Tabelle per gate con 2 ingressi

| x   | y   | $f_0$ | $f_1$ | $f_2$ | $f_3$ | $f_4$ | $f_5$ | $f_6$ | $f_7$ | $f_8$ | $f_9$ | $f_{10}$ | $f_{11}$ | $f_{12}$ | $f_{13}$ | $f_{14}$ | $f_{15}$ |
| --- | --- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -------- | -------- | -------- | -------- | -------- | -------- |
| 0   | 0   | 0     | 0     | 0     | 0     | 0     | 0     | 0     | 0     | 1     | 1     | 1        | 1        | 1        | 1        | 1        | 1        |
| 0   | 1   | 0     | 0     | 0     | 0     | 1     | 1     | 1     | 1     | 0     | 0     | 0        | 0        | 1        | 1        | 1        | 1        |
| 1   | 0   | 0     | 0     | 1     | 1     | 0     | 0     | 1     | 1     | 0     | 0     | 1        | 1        | 0        | 0        | 1        | 1        |
| 1   | 1   | 0     | 1     | 0     | 1     | 0     | 1     | 0     | 1     | 0     | 1     | 0        | 1        | 0        | 1        | 0        | 1        |

### Gate AND

Tabella della verità:

| x   | y   | z   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |

Espressione: $z = x*y$ oppure $z = xy$

### Gate OR

Tabella della verità:

| x   | y   | z   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 1   |

Espressione: $z = x + y$

### AND e OR con $n$ ingressi

e.g.

**AND con $n=3$**:

| x   | y   | w   | z   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 0   | 0   |
| 0   | 1   | 1   | 0   |
| 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 0   |
| 1   | 1   | 0   | 0   |
| 1   | 1   | 1   | 1   |

### Gate EXOR/XOR

Tabella della verità:

| x   | y   | z   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |

Espressione: $z = x \oplus y$

> lo XOR viene anche detto somma modulo 2, in quando il suo output può essere interpretato come il risultato della somma di due bit, escludendo il riporto.

### Gate NAND

Tabella della verità:

| x   | y   | z   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |

Espressione: $z = x \uparrow y$ oppure $z = \overline{xy}$

### Gate NOR

Tabella della verità:

| x   | y   | z   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 0   |

Espressione: $z = x \downarrow y$ oppure $z = \overline{x+y}$

### Gate EXNOR

Tabella della verità:

| x   | y   | z   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |

Espressione: $z = x \equiv y$ oppure $z = \overline{x \oplus y}$

### Bus di segnali

Un gruppo di segnali viene detto *bus*. Per indicare un bus di $n$ segnali che codificano un'informazione, si usa la notazione con parentesi quadre:

$$
\text{TEST}[n-1 \dots 0]
$$

e.g.

- bus a $3$ bit per il colore: $\text{COLORE}[2 \dots 0]$

Per riferirci ad uno dei segnali del bus, si usa la notazione:

$$
\text{TEST}0, \dots, \text{TEST}n-1
$$

e.g.

- secondo segnale del bus dei colori: $\text{COLORE}1$

### Ritardo di propagazione

Pur lavorando con componenti astratti, bisogna tenere in considerazione il fatto che possono essere componenti reali.
La differenza principale tra i due, da prendere in considerazione, è il "ritardo di propagazione", indicato con $\tau_p$, ed esprime il tempo che un segnale impiega per completare la transizione tra stati.
Un impulso di durata inferiore a $\tau_p$ su uno degli ingressi non appare in uscita.
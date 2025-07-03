+++
weight = 17
+++

### RSA per le memorie binarie

Uno degli usi più importanti delle RSA è la realizzazione di memorie binarie, ovvero circuiti che hanno lo scopo di memorizzare il valore di un bit.
Sono categorizzati come componenti primitivi, inoltre sono i principali blocchi di costruzione per le reti sincrone.
Ci sono 3 tipi principali di memorie:

- Latch SR
- Latch CD
- Flip-flop D

Si differenziano per quale sequenza di ingressi porta alla scrittura di un bit, quindi quando sono sensibili a comandi di modifica dell’informazione memorizzata.

### Latch SR

La più semplice memoria binaria. Questo componente ha:

- 2 Ingressi: set $S$ e reset $R$
- 2 Uscite: $Q$ e il suo complemento $Q'$

Il comportamento della rete è il seguente:

| Comando    | Ingresso $S$ | Ingresso $R$ | Uscita $Q$              |
| ---------- | ------------ | ------------ | ----------------------- |
| Memorizza  | 0            | 0            | *Ultimo valore scritto* |
| Scrivi $1$ | 1            | 0            | 1                       |
| Scrivi $0$ | 0            | 1            | 0                       |

La coppia di ingressi 11 non può presentarsi per un corretto funzionamento della rete.

#### Sintesi del latch SR

Tabella di flusso

|     | 00  | 01  | 11  | 10  | $Q$ |
| --- | --- | --- | --- | --- | --- |
| A   | A   | A   | -   | B   | 0   |
| B   | B   | A   | -   | B   | 1   |

$\Downarrow$ Tabella delle transizioni

|     | 00  | 01  | 11  | 10  | $Q$ |
| --- | --- | --- | --- | --- | --- |
| A=0 | 0   | 0   | -   | 1   | 0   |
| B=1 | 1   | 0   | -   | 1   | 1   |

$\Downarrow$ Sintesi combinatoria

$Q=y$:

- Espressione SP: $Y = S + yR'$
- Espressione PS: $Y = R' * (y+S)$

#### Stato iniziale di un latch SR

Come ogni RSA, il bit di stato di un latch SR avrà un valore casuale all'avvio della macchina. Ci sono casi in cui, però, serve che il latch SR abbia uno stato iniziale predeterminato all'accensione, perciò esistono delle varianti del latch SR dotate di 2 ingressi aggiuntivi, normalmente attivi bassi, prioritari rispetto a $S$ e $R$:

- Ingresso di *preset* $PRE'$: quando $PRE'=0$, il latch SR memorizza $1$ indipendentemente dai valori di $S$ e $R$
- Ingresso di *clear* $CLR'$: quando $CLR'=0$, il latch SR memorizza $0$ indipendentemente dai valori di $S$ e $R$

Anche per gli ingressi di *preset* e *clear* vale la regola che non possono mai essere contemporaneamente attivi.

#### Metastabilità

*TODO*

### Latch CD

Il latch CD è un'altra memoria binaria. La differenza principale da un latch SR è il modo in cui viene comandato.
Il latch CD memorizza il valore del segnale $D$ soltanto quando $C$ ha valore $1$.
Chi lo comanda non dice esplicitamente cosa scrivere come nel caso del latch SR, ma *quando* scrivere $D$, pilotando opportunamente $C$.
Quindi diventa possibile, pilotando correttamente il segnale $C$, condiviso da $n$ latch, memorizzare contemporaneamente $n$ dati binari.

| Comando    | Ingresso $C$ | Ingresso $D$ | Uscita $Q$              |
| ---------- | ------------ | ------------ | ----------------------- |
| Memorizza  | 0            | -            | *Ultimo valore scritto* |
| Scrivi $1$ | 1            | 1            | 1                       |
| Scrivo $0$ | 1            | 0            | 0                       |

### Flip-flop D

*TODO*
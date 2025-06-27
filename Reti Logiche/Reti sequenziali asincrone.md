+++
weight = 12
+++

### Rete sequenziale, Memoria e Stato

A differenza di una rete combinatoria, le uscite di una rete sequenziale non dipendono soltanto dai sui ingressi, ma anche dallo *"stato"* precedente della rete.
Per accedere a questo stato, la rete deve essere munita di *memoria*, dentro cui mantenere le informazioni.

Lo stato è un informazione che la rete *memorizza* al suo interno.

Gli stati sono tutti i "riassunti" utili della storia passata degli ingressi.
Utile indica la proprietà degli stati che gli permette di cambiare il comportamento futuro della rete.

Oltre a decidere il valore di uscita, la rete sequenziale deve decidere se *"vale la pena ricordare"* qualsiasi evento che influenzerà il comportamento di essa.
La rete, quando memorizza un evento, cambia stato.

La rete calcola perciò lo *stato futuro*, ovvero il nuovo stato che riassume la storia tenendo in considerazione anche l'ultimo ingresso visto.

### Reti sequenziali asincrone (RSA)

Esistono due tipi di reti sequenziali:

- Asincrone
- Sincrone

In una rete asincrona, lo stato futuro sovrascrive lo stato presente il momento in cui viene calcolato.
Segue una sequenza di lavoro tipica per una rete sequenziale asincrona:

1. Si parte da una situazione stabile, dove:
    - stato presente = stato futuro
    - ingresso costante
2. Cambia un ingresso
3. Dopo un tempo pari al ritardo della rete, sono disponibili un nuovo stato futuro e una nuova uscita.
4. Lo stato futuro diventa lo stato presente, sovrascrivendolo nella memoria della rete.
5. Nuova situazione stabile, con uno stato presente uguale allo stato futuro, ed un ingresso costante.

La rete riinizierà il ciclo ad ogni cambio di ingressi.

### Codifica degli stati

Gli stati vengono rappresentati attraverso *segnali binari organizzati in un codice*.
In una rete sequenziale con $K$ stati, ci saranno almeno $k = [\log_2 K] bit$ per rappresentare lo stato.

Gli ingressi di stato presente e le uscite di stato futuro sono ognuno rappresentati da $k$ segnali binari.

Una notazione comune per questi segnali è $y_{k-1}, \dots, y_1, y_0$ per lo stato presente, e $Y_{k-1}, \dots, Y_1, Y_0$ per lo stato futuro.

In una rete sequenziale asincrona si hanno:

- $m$ segnali di uscita
- $k$ segnali di stato futuro
- $n$ segnali di ingresso
- $k$ segnali di stato presente

Una volta che lo stato presente diventa disponibile, le uscite dipendono solo dagli ingressi attuali e dallo stato presente, perciò le uscite sono funzioni combinatorie di questi segnali.

Una RSA è perciò composta da $m+k$ reti combinatorie, ognuna con $n+k$ ingressi.
Una convenzione comune è indicare con $F$ le funzioni che calcolano i bit di uscita e con $G$ le funzioni che calcolano i bit di stato futuro.

### Retroazione

Data una rete combinatoria, provare a collegare l'uscita di essa in retroazione su uno dei propri ingressi, analizzando il tutto soltanto con usando le pure relazioni matematiche tra i gate, risulterebbe impossibile.

Però i gate non sono istantanei, ogni gate *reale* ha un *ritardo di propagazione*, indicato dal tempo $\tau_p$.

Il ritardo complessivo di una rete combinatoria nel caso peggiore è definito come:

$$
T_p = N_{\text{casc}} * \tau_p
$$

Quando analizziamo una rete, possiamo immaginare un segnale ideale, che cambia istantaneamente al variare degli ingressi, insieme al segnale reale, che cambia dopo il ritardo complessivo della rete.

Grazie ai ritardi delle reti, è possibile connettere reti combinatorie in retroazione diretta, garantendo che la rete calcoli correttamente la nuova uscita.

### Struttura generale di una RSA

Ogni rete combinatoria con *anelli di retroazione diretta* è in realtà una RSA.
La rete ha $k$ bit di stato se ci sono $k$ segnali di retroazione. I ritardi agiscono della rete combinatoria $G$ agiscono come memoria. Lo stato futuro in se non è osservabile. Lo è soltanto quando esso diventa stato presente.

### Finite state machine (FSM)

Una RSA è un caso particolare di *Automa* a stati finiti $M$, anche rappresentabile come sistema matematico.

$$
FSM = \{I,U,S,F,G\}
$$

Formato da:

- 3 insiemi:
    - $I$, alfabeto di ingresso
    - $U$, alfabeto di uscita
    - $S$, insieme degli stati
- 2 funzioni:
    - $F: S \times I \to U$, funzione di uscita,
    - $G: S \times I \to S$, funzione di aggiornamento dello stato interno

Due tipologie:

- Automa di *Mealy* (*sopra-illustrato*)
- Automa di *Moore* (*un caso particolare dell'automa di Mealy, dove l'uscita dipende soltanto dallo stato presente*)

### Comportamento e struttura

Per analizzare una rete combinatoria, si usavano:

- Tabella della verità (TdV) $\to$ Comportamento della rete
- Espressione o schema logico $\to$ Struttura della rete

Per analizzare una rete sequenziali asincrona invece si usano:

- Grafo degli stati e Tabella di flusso $\to$ Comportamento della rete
- Espressione o schema logico $\to$ Struttura della rete (*per ognuna delle $m+k$ reti combinatorie che la compongono*)

### Grafo degli stati

Un grafo ad archi orientati dove:

- *Nodo* $\to$ rappresenta uno stato presente
- *Arco* $\to$ rappresenta una trasformazione, da stato presente a stato futuro, in corrispondenza di una o più configurazioni di ingressi

Da ogni nodo devono uscire tanti rami quante configurazioni possibili di ingressi.
Uno stato stabile è un nodo con un arco che ritorna sul nodo da cui parte.

#### Grafo per un'automa di Mealy

Nel caso dell'automa di Mealy, si indica il valore dell'uscita su ciascuna transazione. Per rendere il grafo più leggibile ogni nodo verrà indicato con una lettera diversa (*A,B,C,D,$\dots$*). Quando il valore d'uscita cambia tra due stati, bisogna contrassegnare l'uscita nella transazione con il simbolo di indifferenza. Per progettare una RSA che opera con continuità, bisogna assicurarsi che:

- esista sempre almeno un percorso per passare da un nodo arbitrariamente scelto ad un altro (*grafo strettamente connesso*)
- non esistano stati irrangiungibili o assorbenti (*dotati di solo frecce entranti*)

#### Grafo per un'automa di Moore

Nel caso dell'automa di Mealy, si indica il valore dell'uscita sugli stati invece che sulle transazioni.

### Stato iniziale e reset

In una rete sequenziale asincrona, l'uscita dipende dagli ingressi e dallo stato presente. Per assicurarsi un comportamento deterministico, la certezza che la rete parta sempre dallo stesso stato, si introduce un segnale di reset, che assume valore 1 per pochi istanti all'accensione, e rimane 0 per il resto del tempo.

### Tabella di flusso

La tabella di flusso è un modo alternativo per descrivere il comportamento di una RSA.

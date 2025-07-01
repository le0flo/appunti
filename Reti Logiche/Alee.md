+++
weight = 13
+++

### Comportamento a regime e in transitorio

Per capire i vincoli di corretto impiego di una RSA, dobbiamo approfondire come risponde ai cambiamenti degli ingressi una rete combinatoria.
Esistono due tipi di comportamenti:

- Comportamento *in transitorio*, che descrive la fase successiva al cambiamento dei segnali di ingresso di una rete combinatoria, caratterizzato dal fatto che l'uscita di essa non ha ancora presentato il valore previsto per la nuova configurazione
- Comportamento *a regime*, ovvero il comportamento al termine della fase transitoria

### Ritardo puro

Il caso più semplice è di comportamento transitorio, la dove al variare di un ingresso, che provoca la variazione di un'uscita di una rete combinatoria, la rete mantiene il precedente valore dell'uscita per il tempo di propagazione $T_p$ della rete combinatoria, prima di sostituirla col nuovo valore.
Questo transitorio è *ineliminabile*, ma *non dannoso*.

### Alea dinamica

L'uscita, in regime di transitorio, varia più volte prima di assestarsi sul nuovo valore.
Questo malfunzionamento è causato dai diversi ritardi di propagazione dei percorsi che agiscono sull'uscita $Z$.
Una rete combinatoria descritta da espressioni SP o PS non presenta *mai* alee dinamiche.

### Alea statica

L'uscita dovrebbe rimanere costante, ma subisce, in regime di transitorio, una temporanea variazione.

e.g.

I due ingressi di un gate *OR* cambiano valore *contemporaneamente*.
Nel caso ideale, l'uscita rimane costante, ma per motivazioni legate al contesto (*la disposizione del circuito, le caratteristiche fisiche dei gate, $\dots$*), si verifica una minuscola variazione indesiderata dell'uscita.

Per evitare alee statiche in una rete combinatoria, è *necessario*, ma *non sufficiente*, variare un solo ingresso alla volta.

Un esempio di *non sufficienza* nell'evitare le alee statiche è il caso del multiplexer.
Usando l'espressione minima SP per un multiplexer, il cambio di $A$, per colpa del disallineamento dei componenti, può provocare alea statica (*nello specifico, a causa del ritardo dei NOT*).

Per evitare a priori l'insorgere di alee statiche, quando si effettua la sintesi con le *mappe di Karnaugh*, si deve scegliere un'espressione ridondante (*quindi non minima*) che racchiuda in uno stesso raggruppamento rettangolare ogni coppia di $1$ o $0$ adiacenti.

e.g.

| $A$\\$I_1I_0$ | 00  | 01  | 11  | 10  |
| ------------- | --- | --- | --- | --- |
| 0             | 0   | 1   | 1   | 0   |
| 1             | 0   | 0   | 1   | 1   |

- espressione SP minima: $A'I_0 + AI_1$
- espressione SP priva di alee: $A'I_0 + AI_1 + I_1I_0$

| $c$\\$ab$ | 00  | 01  | 11  | 10  |
| --------- | --- | --- | --- | --- |
| 0         | 0   | 1   | 0   | 0   |
| 1         | 0   | 1   | 1   | 1   |

- espressione PS minima: $(a+b)(a'+c)$
- espressione PS priva di alee: $(a+b)(a'+c)(b+c)$

| $cd$\\$ab$ | 00  | 01  | 11  | 10  |
| ---------- | --- | --- | --- | --- |
| 00         | 0   | 0   | 1   | 1   |
| 01         | 1   | 1   | 1   | 1   |
| 11         | 1   | 1   | 1   | 0   |
| 10         | 0   | 0   | 1   | 1   |

- espressione SP minima: $a'd + ad' + ab + c'd$
- espressione SP priva di alee: $a'd + ad' + ab + c'd + bd + ac'$

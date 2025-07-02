+++
weight = 14
+++

### Regole di corretto impiego

Ci sono 4 regole per ottenere una RSA a funzionamento corretto.

1. Durata degli ingressi
2. Cambiamento dei bit di ingresso
3. Alee statiche
4. Codifica degli stati

### (1) Durata degli ingressi

Esiste, anche per le RSA, un limite superiore alla velocità di funzionamento della rete.
Per calcolare il tempo minimo di durata di una configurazione binaria in ingresso, devo considerare il ritardo massimo tra $T_{pG_0}, \dots, T_{pG_{k-1}}$ che viene indicato con $T_{pG}$.
In generale d'ingresso deve permanere per almeno $2T_{pG}$: la prima volta per calcolare lo stato futuro a partire dal vecchio stato presente, la seconda per renderlo stabile.
Se sono presenti transizioni multiple e la più lunga prevede $t$ transizioni, il tempo sarà $(1 + t)T_{pG}$, ovvero $T_{pG}$ moltiplicato per il numero necessario di transizioni per rendere lo stato futuro stabile.
### (2) Cambiamento dei bit di ingresso

Il progetto e l'uso di una RSA devono prevedere che cambi solo un bit di ingresso alla volta.

e.g.

|     | 00  | 01  | 11  | 10  | $z$ |
| --- | --- | --- | --- | --- | --- |
| A   | A   | C   | B   | D   | 0   |
| B   | A   | D   | B   | C   | 0   |
| C   | A   | C   | C   | C   | 1   |
| D   | A   | D   | D   | D   | 0   |
Se si parte dallo stato *A* e si riceve la sequenza $00-11-10$ (*sapendo che non possiamo cambiare più di 1 bit alla volta*):

- caso $00-01-11-10$: la rete raggiunge lo stato *C* ma troppo velocemente
- caso $00-10-11-10$: la rete finisce nello stato *D* invece che lo stato *C*

Cambiare più di bit di ingresso alla volta non è soltanto fisicamente impossibile, ma potrebbe causare un aumento nell'imprevedibilità della rete.
Per evidenziare questa regola, si deve modificare la tabella di flusso, eliminando le configurazioni non adiacenti a quelle per cui lo stato è stabile.

e.g.

|     | 00  | 01  | 11  | 10  |
| --- | --- | --- | --- | --- |
| A   | A,0 | A,0 | B,0 | A,0 |
| B   | A,0 | C,0 | B,0 | A,0 |
| C   | A,0 | C,0 | D,- | A,0 |
| D   | A,- | A,- | D,1 | A,- |

$\Downarrow$

|     | 00  | 01  | 11  | 10  |
| --- | --- | --- | --- | --- |
| A   | A,0 | A,0 | B,0 | A,0 |
| B   | -,- | C,0 | B,0 | A,0 |
| C   | A,0 | C,0 | D,- | -,- |
| D   | -,- | A,- | D,1 | A,- |

### (3) Alee statiche

L'alea statica può non essere un problema per reti di calcolo non all interno di anelli combinatori in retroazioni, però può introdurre stati *spuri* all'interno della sequenza di una RSA.
Per eliminare a priori le alee statiche, è necessario usare la tecnica di copertura ridondante, per ottenere le espressioni SP e PS durante la sintesi.

### (4) Codifica degli stati

Le configurazioni binarie associate ad ogni coppia (*stato presente e stato futuro*) devono essere adiacenti. Se applicato a tutte le coppie, questo principio richiederebbe un codice molto ridondante, che utilizzerebbe più bit necessario. Fortunatamente si tratta di un vincolo spesso eccessivo: si può garantire il corretto funzionamento della rete anche in presenza di variazione contemporanea di più di un bit alla volta, per alcune configurazioni di ingresso. Si parla di *corse critiche* e *corse non critiche*.

Per passare dalla tabella di flusso alla tabella delle transizioni, è necessario scegliere una codifica degli stati. Non tutte le codifiche sono valide.

e.g.

|     | 00  | 01  | 11  | 10  |
| --- | --- | --- | --- | --- |
| A   | A   | B   | A   | A   |
| B   | A   | B   | D   | B   |
| C   | A   | C   | C   | C   |
| D   | A   | C   | D   | D   |

$\Downarrow$

|      | 00  | 01  | 11  | 10  |
| ---- | --- | --- | --- | --- |
| A=00 | 00  | 01  | 00  | 00  |
| B=01 | 00  | 01  | 10  | 01  |
| C=11 | 00  | 11  | 11  | 11  |
| D=10 | 00  | 11  | 10  | 10  |

Questa configurazione non è valida poiché le celle $B,11$ e $C,00$ non rispettano il vincolo di adiacenza tra stato presente e stato futuro.

#### Determinare se una configurazione è valida o meno

I segnali in retroazione per cui è stata prevista una modifica contemporanea di valore si trovano in una situazione di *corsa*. Una corsa può essere:

- *Critica*: se si possono raggiungere stabilità diverse
- *Non critica*: se passa da uno o più stati intermedi prima di raggiungere quello stabile

Le transizioni multiple non sono un problema affinché:

- L'uscita non presenti andamenti diversi dal comportamento voluto durante la transizione
- Gli ingressi rimangono stabili fino al raggiungimento dello stato stabile

e.g.

Usando l'esempio di prima, se dallo stato $C,01$ cambia l'ingresso in $00$ lo stato dovrà passare per due possibili stati intermedi:

- $11 \to 01 \to 00$
- $11 \to 10 \to 00$

In entrambe i casi il comportamento non varia l'ingresso rimane stabile, perciò questa situazione di corsa *non è* critica. Invece se dallo stato $B,01$ cambia l'ingresso in $11$, lo stato ha questi due possibili stati intermedi:

- $01 \to 00 \to \times$
- $01 \to 11 \to \times$

Il comportamento varia e in entrambe i casi porta a risultati diversi e non desiderati. Questa situazione di corsa *è* critica.

#### Prevenzione a priori delle corse critiche

La presenza di corse critiche si ha nei casi in cui una colonna della tabella di flusso presenta più di uno stato stabile. In caso di colonne con una sola stabilità, se tutti gli stati non stabili riducono allo stato stabile, si avranno corse non critiche.

Si possono eliminare le situazioni di corse critiche a priori seguendo le seguenti regole:

1. Nelle colonne con una sola stabilità, si inserisce il simbolo dello stato stabile al posto di eventuali condizioni di indifferenza
2. Per le colonne con più stabilità, si traccia il grafo delle adiacenze:
	- Un nodo associato per ogni stato
	- Un ramo orientato per ogni coppia stato *presente-futuro*
3. Si sovrappone il grafo ad una mappa con codici di Gray su righe e colonne (*come per le mappe di Karnaugh*) e si verifica se è possibile assegnare configurazioni adiacenti ad ogni coppia di stati coinvolta in una transazione.
4. Se è impossibile soddisfare i vincoli di adiacenza, si cerca di ridurli ricorrendo a transazioni multiple
5. Se non ci si riesce, si incrementa il numero delle variabili di stato e si ritorna al punto 3

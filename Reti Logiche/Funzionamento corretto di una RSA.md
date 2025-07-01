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

Le configurazioni binarie associate ad ogni coppia (*stato presente e stato futuro*) devono essere adiacenti.

*TODO*
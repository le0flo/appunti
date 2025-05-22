+++
weight = 8
+++

### e.g.

Una rete combinatoria che converte un numero binario a 3 bit a codice 1 su 8 ($2^3$).

La convenzione per indicare gli ingressi è usare le lettere maiuscole a partire dalla A, la quale rappresenta l'ingresso con la cifra meno significativa.

Ogni uscita ha solo una configurazione per cui essa vale "$1$", ovvero quella che codifica il numero dell'uscita stessa. Data la proposizione precedente, è chiaro che la sintesi canonica minima SP prevede quell'unico mintermine nell'espressione.

### Decoder generico $n:2^n$

Una rete che transcodifica un numero binario a $n$ bit a codice $1$ su $2^n$.
Gli $n$ ingressi vengono anche indicati come indirizzi ($A$ addresses), con $A_0$ indirizzo di minor peso.
L'indice $i$ dell'uscita $U_i$ attivata è pari al numero rappresentato dalla configurazione binaria degli stessi ingressi.

$$
	i = A_{n-1} * 2^{n-1} + \dots + A_1 * 2^1 + A_0 * 2^0
$$

| $A_{n-1}$ | ..  | $A_2$ | $A_1$ | $A_0$ |
| --------- | --- | ----- | ----- | ----- |
| 0         | ..  | 0     | 0     | 0     |
| 0         | ..  | 0     | 0     | 1     |
| 0         | ..  |       | 1     | 0     |
| 0         | ..  | 0     | 1     | 1     |
| ..        | ..  | ..    | ..    | ..    |
| 1         | ..  | 1     | 1     | 1     |

| $U_{2^n-1}$ | ..  | $U_2$ | $U_1$ | $U_0$ |
| ----------- | --- | ----- | ----- | ----- |
| 0           | ..  | 0     | 0     | 1     |
| 0           | ..  | 0     | 1     | 0     |
| 0           | ..  | 1     | 0     | 0     |
| 0           | ..  | 0     | 0     | 0     |
| ..          | ..  | ..    | ..    | ..    |
| 1           | ..  | 0     | 0     | 0     |

### Effetto di carico: fan-out

Il fan-out è il numero massimo di gate che possono collegarsi all'ingresso di un singolo gate.
La tecnologia di oggi ci permette di avere numero di fan-out $\geq 10$, ma rimane comunque un fattore importante da considerare.

### MSI e LSI

- **MSI**: Medium Scale Integration
- **LSI**: Large Scale Integration

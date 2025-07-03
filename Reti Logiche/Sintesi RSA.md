+++
weight = 15
+++

### Sintesi di una RSA

5 passaggi:

1. Individuazione del *Grafo degli stati*
2. Definizione della *Tabella di flusso*
3. Codifica degli stati e definizione della *Tabella delle transizioni*
4. Sintesi della *rete combinatoria* di uscita e stato futuro
5. Schema logico che includa anche *ingresso di reset*, se presente

### (2) Tabella di Flusso

2 controlli:

- In ogni riga ci deve essere almeno una condizione di stabilità.
- Le situazioni di instabilità devono indicare uno stato futuro stabile nella colonna

e.g.

|     | 0   | 1   |
| --- | --- | --- |
| A   | A,0 | B,0 |
| B   | C,- | B,0 |
| C   | C,1 | D,1 |
| D   | A,- | D,1 |

### (3) Tabella delle transizioni

In ogni rete sequenziale, lo stato è rappresentato da una configurazione binaria dei bit di stato. Bisogna quindi scegliere un modo per codificare gli stati. Data la codifica, posso tradurre la tabella di flusso in tabella delle transizioni, sostituendo ad ogni stato la codifica binaria.

Non tutte le codifiche producono un funzionamento corretto della rete.

e.g.

|     | 0   | 1   |
| --- | --- | --- |
| A   | A,0 | B,0 |
| B   | C,- | B,0 |
| C   | C,1 | D,1 |
| D   | A,- | D,1 |
$\Downarrow$

|     | 0   | 1   |
| --- | --- | --- |
| 0   | A   | B   |
| 1   | D   | C   |
$\Downarrow$

|      | 0    | 1    |
| ---- | ---- | ---- |
| A=00 | 00,0 | 01,0 |
| B=01 | 11,- | 01,0 |
| C=11 | 11,1 | 10,1 |
| D=10 | 00,- | 10,1 |

### (4) Espressioni combinatorie

La tabella delle transizioni è in realtà una composizione di TdV combinatorie, ovvero di mappe di Karnaugh, con cui è possibile eseguire la sintesi combinatoria delle funzioni che implementano il comportamento richiesto con le metodologie già studiate.

e.g.

|      | 0    | 1    |
| ---- | ---- | ---- |
| A=00 | 00,0 | 01,0 |
| B=01 | 11,- | 01,0 |
| C=11 | 11,1 | 10,1 |
| D=10 | 00,- | 10,1 |

$\Downarrow$

|     | 00  | 01  | 11  | 10  |
| --- | --- | --- | --- | --- |
| 0   | 0   | -   | 1   | -   |
| 1   | 0   | 0   | 1   | 1   |

$Z = y1$

|     | 00  | 01  | 11  | 10  |
| --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 1   | 0   |
| 1   | 0   | 0   | 1   | 1   |

$Y_1 = xy_1 + x'y_0 + y_1y_0$

|     | 00  | 01  | 11  | 10  |
| --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 1   | 0   |
| 1   | 1   | 1   | 0   | 0   |

$Y_0 = xy_1' + x'y_0 + y_1'y_0$

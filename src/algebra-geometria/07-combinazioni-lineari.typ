= Combinazioni lineari

Dato un $VV$ $KK$-spazio vettoriale e degli elementi di $KK$ ($lambda_i$), si dice combinazione lineare di $n$ vettori $arrow(v)_1, dots, arrow(v)_n$ una qualunque somma del seguente tipo:

$ V = lambda_1 arrow(v)_1 + dots + lambda_n arrow(v)_n : lambda_i in KK $

Si può dire che i vettori della combinazione lineare sono:

- *Linearmente dipendenti*: se esiste una combinazione lineare a coefficienti non nulli che da come risultato un vettore nullo (i vettori sono paralleli)
- *Linearmente indipendenti*: se l'unica loro combinazione lineare che da come risultato il vettore nullo, è quella con tutti i coefficienti nulli (i vettori non sono paralleli)

== Span

Dati dei vettori $arrow(v)_1, dots, arrow(v)_n$ di un $VV$ $KK$-spazio vettoriale, lo span è l'insieme di tutte le combinazioni lineari dei vettori con coefficienti $lambda_i$:

$ "span"(arrow(v)_1, dots, arrow(v)_n) = { lambda_1 arrow(v)_1 + dots + lambda_n arrow(v)_n : lambda_i in KK } $

Lo $"span"(arrow(v)_1, dots, arrow(v)_n)$ è un sottospazio vettoriale di $VV$ e si può dire "sottospazio vettoriale generato da $VV$".

== Base

I vettori $arrow(v)_1, dots, arrow(v)_n$ si dicono "sistema di generatori" di $VV$ se ogni vettore di $VV$ si può ottenere come combinazione lineare $arrow(v)_1, dots, arrow(v)_n$.

I vettori $arrow(v)_1, dots, arrow(v)_n$ sono una base se:

- Sono linearmente indipendenti
- Sono un sistema di generatori

Se $VV$ ha una base costituita da $n$ vettori, allora si dice che la dimensione di $VV$ è $n$:

$ dim VV = n $

Se conosciamo la dimensione dello spazio vettoriale $VV$ e troviamo un insieme di vettori linearmente indipendenti, allora possiamo dire che quell'insieme di vettori è una base di $VV$.

#pagebreak()

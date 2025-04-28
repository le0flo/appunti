### Ritardi e velocità

Quando cambia un ingresso di un gate, l’uscita non cambia istantaneamente, ma dopo un tempo $\tau_p$ che dipende dalla tecnologia utilizzata. Questo ritardo varia da gate a gate e anche se il passaggio è da H a L o viceversa. Nel caso peggiore, il ritardo totale della rete è dato dalla somma dei ritardi dei gate sul percorso più lungo tra ingressi e uscite. Si assegna il ritardo peggiore alla rete complessiva.

### Complessità e velocità

Per confrontare complessità e velocità di risposta di reti combinatorie equivalenti, si usano i seguenti indicatori:

- $N_{gate}$ il numero di gate nella rete (*maggiore è l'$N_{gate}$ , maggiore è la complessità*)
- $N_{conn}$ il numero di connessioni in una rete (*maggiore è l'$N_{conn}$ , maggiore è la complessità*)
- $N_{casc}$ il numero massimo di gate disposti in cascata, ovvero in serie tra ingressi e uscite (*minore è l'$N_{gate}$ , maggiore è la velocità*)
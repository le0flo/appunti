= Reti di costo minimo

== Ritardi e velocità

Quando cambia un ingresso di un gate, l’uscita non cambia istantaneamente, ma dopo un tempo $tau_p$ che dipende dalla tecnologia utilizzata.
Questo ritardo varia da gate a gate e anche se il passaggio è da H a L o viceversa.
Nel caso peggiore, il ritardo totale della rete è dato dalla somma dei ritardi dei gate sul percorso più lungo tra ingressi e uscite.
Si assegna il ritardo peggiore alla rete complessiva.

== Complessità e velocità

Per confrontare complessità e velocità di risposta di reti combinatorie equivalenti, si usano i seguenti indicatori:

- $N_"gate"$ il numero di gate nella rete (maggiore è l'$N_"gate"$ , maggiore è la complessità)
- $N_"conn"$ il numero di connessioni in una rete (maggiore è l'$N_"conn"$ , maggiore è la complessità)
- $N_"casc"$ il numero massimo di gate disposti in cascata, ovvero in serie tra ingressi e uscite (minore è l'$N_"gate"$ , maggiore è la velocità)

== Rete di "costo minimo"

Ipotesi:

- Ingressi disponibili in forma vera e negata
- fan-in dei gate quando serve

Una rete combinatoria, per essere considerata "di costo minimo", è una rete con:

- Non più di 2 gate in cascata tra ingressi e uscita
- Minimo numero di gate
- Minimo numero di ingressi per gate

Il numero di gate e/o connessioni della rete di costo minimo di tipo SP è in generale diverso da quello della rete di costo minimo di tipo PS.

E' possibile che più espressioni dello stesso tipo (SP o PS) siano minime (abbiano cioè valori uguali di $N_"gate", N_"conn"$ e $N_"casc" <= 2$).

#pagebreak()

== Implicanti e implicanti primi

Viene detto implicante, un termine di $n$ ingressi che assume il valore 1 solo la dove la funzione vale 1 o per indifferenza.
Un implicante che cessa di essere tale quando si rimuove un suo letterale viene detto implicante primo.
Un implicante primo essenziale è l'unico ad assumere valore 1 per alcune configurazioni degli ingressi in cui la funzione assume valore 1 (non per indifferenza).
L'espressione minima SP è la somma di implicanti primi essenziali.

esempio:

#table(
  columns: 4,
  $a$, $b$, $c$, $z$,
  $0$, $0$, $0$, $1$,
  $0$, $0$, $1$, $1$,
  $0$, $1$, $0$, $1$,
  $0$, $1$, $1$, $-$,
  $1$, $0$, $0$, $-$,
  $1$, $0$, $1$, $0$,
  $1$, $1$, $0$, $0$,
  $1$, $1$, $1$, $1$,
)

Implicanti rispetto alla TdV:

- 3 termini (mintermini): $a'b'c', a'b'c, a'b c', a'b c, a b'c', a b c$
- 2 termini: $a'b', a'b, a'c, a'c', b'c', b c$
- 1 termine: $a'$

#table(
  columns: 5,
  $a$, $b$, $c$, $z$, [implicanti primi attivi],
  $0$, $0$, $0$, $1$, $a', b'c'$,
  $0$, $0$, $1$, $1$, $a'$,
  $0$, $1$, $0$, $1$, $a'$,
  $0$, $1$, $1$, $-$, $a', b c$,
  $1$, $0$, $0$, $-$, $b'c'$,
  $1$, $0$, $1$, $0$, [],
  $1$, $1$, $0$, $0$, [],
  $1$, $1$, $1$, $1$, $b c$,
)

Implicanti primi: $a', b c$

$ F(a,b,c) = a' + b c $

#pagebreak()

== Implicati e implicati primi

Viene detto implicato, un termine di $n$ ingressi che assume il valore 0 solo la dove la funzione vale 0 o per indifferenza.
Un implicato che cessa di essere tale quando si rimuove un suo letterale viene detto implicato primo.
Un implicato primo essenziale è l'unico ad assumere valore 0 per alcune configurazioni degli ingressi in cui la funzione assume valore 0 (non per indifferenza).
L'espressione minima PS è il prodotto degli implicati primi essenziali.

esempio:

#table(
  columns: 4,
  $a$, $b$, $c$, $z$,
  $0$, $0$, $0$, $1$,
  $0$, $0$, $1$, $1$,
  $0$, $1$, $0$, $1$,
  $0$, $1$, $1$, $-$,
  $1$, $0$, $0$, $-$,
  $1$, $0$, $1$, $0$,
  $1$, $1$, $0$, $0$,
  $1$, $1$, $1$, $1$,
)

- *Implicati*: $a+b'+c', a'+b+c, a'+b+c', a'+b'+c, a'+c, a'+b$
- *Implicati primi*: $a'+c, a'+b, a+b'+c'$
- *Implicati primi essenziali*: $a'+c, a'+b$

$ F(a,b,c) = (a'+c)(a'+b) $

#pagebreak()

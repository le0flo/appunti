= Contatore

Un contatore è una rete sincrona senza ingressi (nel caso più semplice) che effettua continuamente un ciclo attraverso tutti gli stati interni e rende disponibile sulle uscite lo stato interno.
Un contatore binario modulo $n$ è un contatore in cui gli stati sono codificati con i primi $n$ numeri binari.

== Contatore binario x4

#table(
  columns: 4,
  $Q_1^n$, $Q_0^n$, $Q_1^(n+1)$, $Q_0^(n+1)$,
  $0$, $0$, $0$, $1$,
  $0$, $1$, $1$, $0$,
  $1$, $0$, $1$, $1$,
  $1$, $1$, $0$, $0$,
)

Dalla sequenza di stati si può dedurre:

- Il bit di peso minore commuta ad ogni clock, ovvero è il NOT del suo valore nel ciclo di clock precedente
- Il secondo bit è l'EXOR dello stato precedente

Perciò:

- $Q_0^(n+1) = Q'_0^n$
- $Q_1^(n+1) = (Q_0 plus.o Q_1)^n$

== Comandi sincroni

=== ENABLE

Il comando di ENABLE ($"EN"$) abilita/disabilita il conteggio.
Il contatore con ENABLE conta i cicli di clock in cui $"EN"=1$.
Essendo un comando sincrono, $"EN"=0$ blocca il conteggio al clock successivo.

esempio:

La rete si può realizzare con dei selettori che intercettano il segnale prima di entrare nell'ingresso $D$ di ogni FF-D.
Sull'ingresso $I 0$ del selettore abbiamo l'uscita del FF-D $Q$, mentre su $I 1$ abbiamo il complemento dell'uscita ($Q'$) del FF-D.
Una possibile ottimizzazione sarebbe sostituire il selettore per $Q_0$ con un EXOR, poiché il comportamento è lo stesso.

#table(
  columns: 5,
  $"EN"$, $Q_0$, $Q'_0$, $z$, $"EN" plus.o Q_0$,
  $0$, $0$, $1$, $0$, $0$,
  $1$, $0$, $1$, $1$, $1$,
  $0$, $1$, $0$, $1$, $1$,
  $1$, $1$, $0$, $0$, $0$,
)

#pagebreak()

Oltre a $Q_0$, è possibile ottimizzare il calcolo del valore $Q_1$.
Questo infatti equivale a un AND e un EXOR in cascata.

#table(
  columns: 7,
  $"EN"$, $Q_1$, $Q_0$, $Q_1 plus.o Q_0$, $z$, $"EN" Q_0$, $Q_1 plus.o ("EN" Q_0)$,
  $0$, $0$, $0$, $0$, $0$, $0$, $0$,
  $0$, $0$, $1$, $1$, $0$, $0$, $0$,
  $0$, $1$, $0$, $1$, $1$, $0$, $1$,
  $0$, $1$, $1$, $0$, $1$, $0$, $1$,
  $1$, $0$, $0$, $0$, $0$, $0$, $0$,
  $1$, $0$, $1$, $1$, $1$, $1$, $1$,
  $1$, $1$, $0$, $1$, $1$, $0$, $1$,
  $1$, $1$, $1$, $0$, $0$, $1$, $0$,
)

=== RESET

Tipicamente prioritario rispetto al comando di ENABLE, il comando di RESET ($"RES"$) serve a riportare allo stato 0 il contatore, in modo sincrono.
Normalmente $"A_RESET"$ è usato all'inizializzazione del sistema, mentre $"RES"$ per resettare il conteggio durante la normale operatività.

=== LOAD

Il comando di LOAD ($"LD"$), tipicamente prioritario rispetto ad ENABLE e RESET, imposta il valore di conteggio ad un valore fornito dall'esterno sugli ingressi $I[k-1 dots 0]$.

=== UP/DOWN'

Il comando di UP/DOWN' ($U/D'$) stabilisce se il conteggio va effettuato in avanti ($U/D'=1$) o all'indietro ($U/D'=0$).
Ovviamente il comando ENABLE è sempre prioritario rispetto a $U/D'$.

== Contatore binario x8

Per realizzare un contatore binario x8, il bit $Q_2$ deve commutare ogni qualvolta $Q_1Q_0 = 1$.
Un concetto equivalente al fatto che nel sistema decimale, la cifra delle centinaia incrementa soltanto quando quelle che la precedono formano il numero 99.
La commutazione può essere realizzata come quella per $Q_1$ vista nello schema con ENABLE.

#pagebreak()

=== Incremento della base di conteggio

La regola che il bit $Q_i$ deve commutare quando tutti i bit da $Q_(i-1)$ a $Q_0$ valgono $1$ ha valenza generale.
Similmente, nel conteggio all'indietro, il bit $Q_i$ deve commutare quando tutti i bit da $Q_(i-1)$ a $Q_0$ valgono $0$.
Per estendere la base di conteggio è quindi utile dotare il contatore di un'ulteriore uscita di *carry out* ($"CO"$), che segnala il raggiungimento dell'ultimo stato.
$"CO"=1$ in caso di conteggio in avanti, quando tutti i bit valgono $1$, in caso di conteggio all'indietro, quando tutti i bit valgono $0$.
Collegando questa uscita all'ingresso ENABLE di un'altro contatore, è possibile abilitarlo al conteggio solo quando deve effettivamente contare.
Così si ottiene un contatore privo di comandi sincroni con base di conteggio pari al prodotto delle due basi.
Se si vuole avere un contatore composto con il comando ENABLE, bisogna:

- Portarlo all'ingresso del contatore meno significativo
- Condizionare con $"EN"$ anche l'ingresso ENABLE del contatore successivo

=== Decremento della base di conteggio

Dato un contatore per $n$, per realizzare un contatore per $m$ tale che $m < n$, devo:

- Trovare il mintermine corrispondente a $m-1$
- Aggiungere un AND con il segnale $"EN"$ per evitare che il contatore venga reimpostato anche quando $"EN"=0$
- Collegare il segnale precedentemente descritto al comando $"RES"$ del contatore in questione

== Divisore di frequenza

Ogni uscita $Q_i$ del contatore mentre $"EN"=1$ evolve come un'onda quadra con frequenza $f / (2^(i+1))$, se $f$ è la frequenza del clock.
Per esempio, $Q_0$ ha la frequenza di $f / 2$, $Q_1$ ha la frequenza di $f / 4$ e così via.

#pagebreak()

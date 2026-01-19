= Reti logiche

Una rete logica è un'astrazione che rappresenta una combinazione di "interruttori" che elaborano segnali binari.

== Gate

Definiamo "gate" tutti i componenti elementari di cui non conosciamo il come sono fatti, ma il loro comportamento.
Il numero di funzioni diverse di $n$ ingressi binari con un'uscita binaria è:

$ 2^(2^n) $

I componenti elementari, o funzioni possibili, limitandosi ai componenti con un unico segnale binario di ingresso $x$ sono $4, (n = 1)$.

esempio:

#table(
  columns: 5,
  $x$, $f_1$, $f_2$, $f_3$, $f_4$,
  $0$, $0$, $0$, $1$, $1$,
  $1$, $0$, $1$, $0$, $1$
)

Ogni gate è descritto da:

- *Tabella della verità*: con ogni riga che riporta un possibile ingresso e la corrispondente uscita
- *Simbolo circuitale*: per rappresentarlo graficamente e distinguerlo
- *Espressione*: un modo di rappresentare la relazione tra ingressi ed uscite

=== Gate NOT

Tabella della verità:

#table(
  columns: 2,
  $x$, $y$,
  $0$, $1$,
  $1$, $0$
)

Espressione: $y = overline(x)$ oppure $y = x'$

=== Gate AND

Tabella della verità:

#table(
  columns: 3,
  $x$, $y$, $z$,
  $0$, $0$, $0$,
  $0$, $1$, $0$,
  $1$, $0$, $0$,
  $1$, $1$, $1$
)

Espressione: $z = x*y$ oppure $z = x y$

#pagebreak()

=== Gate OR

Tabella della verità:

#table(
  columns: 3,
  $x$, $y$, $z$,
  $0$, $0$, $0$,
  $0$, $1$, $1$,
  $1$, $0$, $1$,
  $1$, $1$, $1$
)

Espressione: $z = x + y$

=== Gate XOR / EXOR

Tabella della verità:

#table(
  columns: 3,
  $x$, $y$, $z$,
  $0$, $0$, $0$,
  $0$, $1$, $1$,
  $1$, $0$, $1$,
  $1$, $1$, $0$
)

Espressione: $z = x plus.o y$

lo XOR viene anche detto somma modulo 2, in quando il suo output può essere interpretato come il risultato della somma di due bit, escludendo il riporto.

=== Gate NAND

Tabella della verità:

#table(
  columns: 3,
  $x$, $y$, $z$,
  $0$, $0$, $1$,
  $0$, $1$, $1$,
  $1$, $0$, $1$,
  $1$, $1$, $0$
)

Espressione: $z = x arrow.t y$ oppure $z = overline(x y)$

=== Gate NOR

Tabella della verità:

#table(
  columns: 3,
  $x$, $y$, $z$,
  $0$, $0$, $1$,
  $0$, $1$, $0$,
  $1$, $0$, $0$,
  $1$, $1$, $0$
)

Espressione: $z = x arrow.b y$ oppure $z = overline(x + y)$

#pagebreak()

=== Gate EXNOR

Tabella della verità:

#table(
  columns: 3,
  $x$, $y$, $z$,
  $0$, $0$, $1$,
  $0$, $1$, $0$,
  $1$, $0$, $0$,
  $1$, $1$, $1$
)

Espressione: $z = x equiv y$ oppure $z = overline(x plus.o y)$

=== AND e OR con $n$ ingressi

esempio, AND con $n=3$:

#table(
  columns: 4,
  $x$, $y$, $w$, $z$,
  $0$, $0$, $0$, $0$,
  $0$, $0$, $1$, $0$,
  $0$, $1$, $0$, $0$,
  $0$, $1$, $1$, $0$,
  $1$, $0$, $0$, $0$,
  $1$, $0$, $1$, $0$,
  $1$, $1$, $0$, $0$,
  $1$, $1$, $1$, $1$,
)

=== Bus di segnali

Un gruppo di segnali viene detto bus.
Per indicare un bus di $n$ segnali che codificano un'informazione, si usa la notazione con parentesi quadre:

$ "TEST"[n-1 dots 0] $

esempio:

- bus a $3$ bit per il colore: $"COLORE"[2 dots 0]$

Per riferirci ad uno dei segnali del bus, si usa la notazione:

$ "TEST"0, dots, "TEST"n-1 $

esempio:

- secondo segnale del bus dei colori: $"COLORE"1$

=== Ritardo di propagazione

Pur lavorando con componenti astratti, bisogna tenere in considerazione il fatto che possono essere componenti reali.
La differenza principale tra i due, da prendere in considerazione, è il "ritardo di propagazione", indicato con $tau_p$, ed esprime il tempo che un segnale impiega per completare la transizione tra stati.
Un impulso di durata inferiore a $tau_p$ su uno degli ingressi non appare in uscita.

#pagebreak()

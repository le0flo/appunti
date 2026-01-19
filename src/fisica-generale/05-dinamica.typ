#import "@preview/cetz:0.4.2"

= Dinamica

La dinamica è lo studio delle forze e degli effetti sul moto.
Esistono 4 tipi di forze fondamentali:

- Forza elettromagnetica
- Forza gravitazionale
- Forza "nucleare debole"
- Forza "nucleare forte"

La dinamica classica si basa su tre leggi fondamentali, storicamente formalizzate da Newton.

== Prima legge

=== Formulazione intuitiva

Un corpo su cui la risultante delle forze è nulla mantiene inalterato il suo stato di quiete o moto.
Questa enunciazione non è precisa, perchè tratta in modo implicito il sistema di riferimento.

=== Formulazione precisa

Esiste un sistema di riferimento tale che un corpo materiale che sia sufficientemente lontano da tutti gli altri corpi o è in quiete o si muove di moto rettilineo uniforme.
Tale sistema di riferimento è detto inerziale.

Esistono infiniti sistemi di riferimento inerziali.
Supponendo di avere un sistema di riferimento inerziale $S$.
Prendendo $S'$ che si muove rispetto ad $S$ di moto uniforme con velocità $arrow(w)$.
Anche $S'$ è un sistema di riferimento inerziale.

Se su un punto $P$ nel sistema $S$ inerziale:

$ arrow(Q)(t) = arrow(v)(t) + arrow(Q)(t_0) $

È importante determinare i sistemi di riferimento inerziali perchè la descrizione delle leggi fisiche è la stessa in tutti i sistemi di riferimento.
Questo concetto è formalizzabile nel "principio di relatività Galileiano".
Sistemi di riferimento inerziali sono un'idealizzazione.
Qualsiasi sistemi di riferimento che prendiamo in pratica ha delle "deviazioni" da un sistema di riferimento inerziale ideale.
L'importante è che gli effetti dovuti all'aver scelto un sistema non inerziali siano trascurabili rispetto al moto che si vuole descrivere.

#pagebreak()

== Seconda legge

Un punto materiale su cui agisce una forza $arrow(F)$, accelera con un'accelerazione $arrow(a)$ proporzionale a $arrow(F)$.
La costante di proporzionalità è detta massa:

$ arrow(F) = m arrow(a) $

- La massa si misura in $"Kg"$
- La forza si misura in Newton $N$

$1 N$ corrispende alla forza che imprime un'accelerazione di $1 "m/s"^2$ ad un corpo di massa $1 "Kg"$.

L'effetto di molte forze applicate allo stesso punto è quello di un vettore forza che è la somma di tutti i vettori forza,
e lo stesso vale per l'accelerazione.

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((0,0), (2,1), name: "f_1", stroke: (paint: red), mark: (end: ">", fill: red))
      content("f_1.end", [$arrow(F)_1$], anchor: "south", padding: 0.1)

      line((0,0), (2,-2), name: "f_2", stroke: (paint: red), mark: (end: ">", fill: red))
      content("f_2.end", [$arrow(F)_2$], anchor: "south-west", padding: 0.1)

      circle((0,0), name: "p", radius: 0.2mm, fill: black)
      content("p.mid", [$P$], anchor: "east", padding: 0.1)
    })
  })
})

$
arrow(F)_t = arrow(F)_1 + arrow(F)_2 arrow
arrow(a)_t = arrow(F)_t / m =
arrow(F)_1 / m + arrow(F)_2 / m = arrow(a)_1 + arrow(a)_2
$

== Terza legge

Se un punto $A$ esercita una forza $arrow(F)$ su un punto $B$, allora $B$ esercita una forza $-arrow(F)$ su $A$.

== Forza elastica

La forza elastica è quella esercitata da una molla che viene allungata o compressa rispetto a lunghezza di riposo.

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *
      import cetz.decorations: *

      line((-1,0), (7,0))
      line((0,0), (0,2))

      coil(line((0,1), (4,1)), amplitude: 0.50, start: 10%, stop: 90%)

      line((4,1), (6,1), name: "d_x", stroke: (dash: "dashed", paint: red))
      content("d_x.mid", [$Delta x$], anchor: "north", padding: 0.1)

      circle((0,1), radius: 0.2mm, fill: black)

      circle((4,1), name: "p", radius: 0.2mm, fill: black)
      content("p.mid", [$P$], anchor: "south", padding: 0.1)

      circle((6,1), radius: 0.2mm, stroke: (paint: red), fill: red)
    })
  })
})

=== Legge di Hooke

$ arrow(F) = -K(Delta x) hat(x) $

Dato $P$ di massa $m$ all'estremo della molla, ha un'accelerazione (in modulo).

$ a = (|arrow(F)|) / m = K / m (Delta x) $

A differenza della forza peso, dipende da massa del corpo.

== Il moto del pendolo

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-5,0), (5,0))
      line((0,0), (0,-5), stroke: (dash: "dashed"))

      line((0,0), (-2.7,-3.6), name: "l")
      content("l.mid", [$l$], anchor: "south-east", padding: 0.1)

      line((-2.7,-3.6), (-1.5,-2), name: "u_t", stroke: (paint: green), mark: (end: ">", fill: green))
      content("u_t.end", [$hat(u)_t$], anchor: "north-west", padding: 0.1)

      line((-2.7,-3.6), (-1.5,-4.5), name: "u_n", stroke: (paint: green), mark: (end: ">", fill: green))
      content("u_n.end", [$hat(u)_n$], anchor: "north-west", padding: 0.1)

      line((-2.7,-3.6), (-2.7,-5), name: "f_p", stroke: (paint: blue), mark: (end: ">", fill: blue))
      content("f_p.end", [$arrow(F)_p$], anchor: "north-east", padding: 0.1)

      line((-2.7,-3.6), (-2,-2.665), name: "f_t", stroke: (paint: blue), mark: (end: ">", fill: blue))
      content("f_t.end", [$arrow(F)_T$], anchor: "south-east", padding: 0.1)

      line((-2.7,-3.6), (-3,-4), stroke: (dash: "dashed"))
      line((0,0), (1.14,-4.355), stroke: (dash: "dashed", paint: green))

      arc((0,0), anchor: "origin", start: 233deg, stop: 285deg, radius: 45mm, stroke: (paint: red))

      arc((0,0), name: "theta", anchor: "origin", start: -90deg, stop: -127deg, radius: 35mm, mark: (end: ">", fill: black))
      content("theta.mid", [$theta_0$], anchor: "north", padding: 0.2)

      arc((0,0), name: "theta_t", anchor: "origin", start: 270deg, stop: 285deg, radius: 35mm, stroke: (paint: red), mark: (end: ">", fill: red))
      content("theta_t.mid", [$theta(t)$], anchor: "north", padding: 0.3)

      circle((-2.7,-3.6), name: "m", radius: 0.2mm, fill: black)
      content("m.mid", [$m$], anchor: "south-east", padding: 0.1)

      circle((1.14,-4.355), name: "r_t", radius: 0.2mm, stroke: (paint: red), fill: red)
      content("r_t.mid", [$arrow(r)_t$], anchor: "north", padding: 0.1)
    })
  })
})

$
s(t) = l theta(t) \
arrow(a) = l dot.double(theta)(t) hat(u)_t + (l dot(theta)(t))^2 / R hat(u)_n
$

Perciò:

- $a_n = l dot(theta)(t)^2$
- $a_t = l dot.double(theta)(t)$
- $theta(t) = A cos(omega t + phi)$
- $dot.double(theta)(t) = - g / l sin(theta(t)) arrow -g / l theta(t)$ (per angoli piccoli)
- $omega = sqrt(g / l) arrow omega = (2 pi) / T arrow T = 2 pi sqrt(l / g)$

Parlando di forze:

$ arrow(F)_R = arrow(F)_T + arrow(F)_p $

- $arrow(F)^((R))_n = |arrow(F)_T| - |arrow(F)_p| cos(theta(t))$
- $arrow(F)^((R))_t = -|arrow(F)_p| sin(theta(t)) = -m g sin(theta(t))$

#pagebreak()

== Forze di attrito

Le forze di attrito sono forze causati dall'interazione di componenti microspopiche che hanno l'effeto netto di "opporsi" al moto.

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-5,0), (5,0))

      rect((-1.5,0), (1.5,1))

      line((-1,0.5), (-2,0.5), name: "f_a", stroke: (paint: green), mark: (end: ">", fill: green))
      content("f_a.end", [$arrow(F)_A$], anchor: "south-east", padding: 0.1)

      line((0.7,0.5), (3,0.5), name: "f", stroke: (paint: red), mark: (end: ">", fill: red))
      content("f.end", [$arrow(F)$], anchor: "south-west", padding: 0.1)
    })
  })
})

Ci sono diversi tipi di attrito che si verificano in situazioni diverse.

=== Attrito statico

Si parla di attrito statico quando si prova a muovere un corpo con una forza $arrow(F)$ e il corpo non si muove.
Esiste un valore massimo di $|arrow(F)_("AS")|$ che l'attrito statico può opporre a $arrow(F)$, prima che il corpo si muova.

$ arrow(F)^("MAX")_("AS") = mu_S * |arrow(F)_N| $

dove $mu_S$ è il coefficiente di attrito statico, tipicamente:

$ mu_S tilde.op 0.1 $

=== Attrito dinamico

Si parla di attrito dinamico quando si ha un corpo in movimento e le forze di attrito si oppongono al moto.

$ arrow(F)_("AD") = mu_D * |arrow(F)_N| $

dove $mu_D$ è il coefficiente di attrito dinamico, tipicamente:

$ 0 < mu_D < mu_S arrow mu_D tilde.op 0.01 $

#pagebreak()

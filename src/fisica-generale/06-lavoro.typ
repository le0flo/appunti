#import "@preview/cetz:0.4.2"

= Lavoro ed energia

L'energia è la capacità di compiere un lavoro.
Per definire un lavoro, occorre una forza definita lungo uno spostamento.

Per esempio:

- Forza costante $arrow(F)$
- spostamento rettilineo $arrow(l)$ diretto come $arrow(F)$

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-5,0), (5,0))

      line((-3,0), (3,0), name: "l", stroke: (paint: blue))
      content("l.mid", [$l$], anchor: "north", padding: 0.1)

      rect((-3,0), (-1.5,1), stroke: (paint: red))

      line((-1.5,0.5), (1,0.5), name: "f", mark: (end: ">", fill: black))
      content("f.mid", [$arrow(F)$], anchor: "south", padding: 0.1)

      circle((-3,0), name: "a", radius: 0.2mm)
      content("a.mid", [$A$], anchor: "north", padding: 0.1)

      circle((3,0), name: "b", radius: 0.2mm)
      content("b.mid", [$B$], anchor: "north", padding: 0.1)
    })
  })
})

Si definisce in questo caso il lavoro $L$ come:

$ L = |arrow(F)| * |arrow(l)| "assumendo che" arrow(F) parallel arrow(l) $

Nell'esempio precedente il tavolo esercita una forza normale allo spostamento ($arrow(F)_n * arrow(l) = 0$).
Possiamo definire il lavoro di una forza non necessariamente parallela allo spostamento come:

$ L = arrow(F) * arrow(l) = |arrow(F)| * |arrow(l)| * cos(alpha) $

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-5,0), (5,0))

      line((-3,0), (3,0), name: "l", stroke: (paint: blue))
      content("l.mid", [$l$], anchor: "north", padding: 0.1)

      rect((-3,0), (-1.5,1), stroke: (paint: red))

      line((-1.5,0.5), (1,3), name: "f", mark: (end: ">", fill: black))
      content("f.mid", [$arrow(F)$], anchor: "south", padding: 0.1)

      arc((-2,0), name: "alpha", anchor: "origin", start: 0deg, stop: 45deg, radius: 15mm)
      content("alpha.mid", [$alpha$], anchor: "south-west", padding: 0.1)

      circle((-3,0), name: "a", radius: 0.2mm)
      content("a.mid", [$A$], anchor: "north", padding: 0.1)

      circle((3,0), name: "b", radius: 0.2mm)
      content("b.mid", [$B$], anchor: "north", padding: 0.1)
    })
  })
})

Quelli precedenti erano casi particolari, ora, assumendo che:

- $arrow(F)$ non è necessariamente costante
- lo spostamento è lungo una curva (non necessariamente una retta)

Definiamo il lavoro compiuto come:

$ L = integral^B_A F_t d l $

Dove è la componente tangenziale di $arrow(F)$: $F_t = |arrow(F)| * cos(alpha)$

Il lavoro si misura in Joule (J):

$ 1J = 1N * 1m $

#pagebreak()

== Potenza

Si definisce la potenza di una forza, come il lavoro compiuto da essa in una unità di tempo:

$ P = (d L) / (d t) $

La potenza si misura in Watt (W)

$ 1W = (1J) / (1s) $

== Teorema delle forze vive

$ L_("AB") = 1 / 2 m |arrow(v)_B|^2 - 1 / 2 m |arrow(v)_A|^2 $

Questa relazione motiva definisce l'energia cinetica:

$ T_A = 1 / 2 m |arrow(v)_A|^2 $

Perciò il teorema delle forze vive afferma che:

$ L_("AB") = T_B - T_A $

Cioè il lavoro per spostare un oggetto dal punto $A$ al punto $B$ equivale alla differenza di energia cinetica.

=== Più di una forza

Nel caso in cui sul corpo di massa $m$ agiscano molte forze $arrow(F)_i$,
il teorema rimane vero a patto che il lavoro venga calcolato usando la risultante delle forze:

$ L_("AB") = integral^B_A arrow(F)_R d arrow(l) = integral^B_A (sum_i arrow(F)_i) d arrow(l) = sum_i integral^B_A arrow(F)_i d arrow(l) $

$L_("AB")^((i)) = integral^B_A arrow(F)_i d arrow(l)$ è il lavoro compiuto dalla forza $i$-esima:

$ sum_i L_("AB")^((i)) = T_B - T_A $

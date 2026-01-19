#import "@preview/cetz:0.4.2"

= Cinematica

La cinematica è lo studio moto. Il moto dipende dal sistema di riferimento.

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((0,0,0), (5,0,0), name: "x", mark: (end: ">"))
      content("x.end", [$hat(x)$], anchor: "west", padding: 0.1)

      line((0,0,0), (0,5,0), name: "y", mark: (end: ">"))
      content("y.end", [$hat(y)$], anchor: "south", padding: 0.1)

      line((0,0,0), (0,0,5), name: "z", mark: (end: ">"))
      content("z.end", [$hat(z)$], anchor: "east", padding: 0.1)

      catmull((1,2,0), (2.5,2.5,1), (4,2,2), (5,2.75,1), stroke: (paint: blue), mark: (end: ">", fill: blue))

      line((0,0,0), (4,2,2), name: "r_t", stroke: (paint: red), mark: (end: ">", fill: red))
      content("r_t.mid", [$arrow(r)(t)$], anchor: "south-east", padding: 0.1)

      circle((1,2,0), name: "p", radius: 0.2mm, fill: blue)
      content("p.mid", [$P$], anchor: "south", padding: 0.1)
    })
  })
})

Possiamo descrivere il moto di un punto materiale come una funzione.

$
r: &RR &arrow &RR^3 \
&t &arrow &arrow(t)(t)
$

== Punto

=== Definizione

Dato $arrow(t)(t)$ che descrive il moto di un punto, definiamo la traiettoria come il luogo dei punti dello spazio "esplorati" da $arrow(t)(t)$ al variare di $t$.
$arrow(t)(t)$ è un vettore dimensionale:

$ arrow(t)(t) = (r_x(t), r_y(t), r_z(t)) $

=== Notazione

$ [r_x] = (m) $

#pagebreak()

== Velocità

=== Definizione

La velocità è una funzione vettoriale che associa ad ogni tempo "lo spostamento infinitesimo" in un intervallo di tempo infinitesimo.


#block(width: 100%, height: 4cm, {
  align(center + horizon, {
    columns(2, {
      [$ arrow(v)(t) = lim_(Delta t arrow 0) (arrow(t)(t + Delta t) - arrow(t)(t)) / (Delta t) = d / (d t) arrow(t)(t) $]

      colbreak()

      cetz.canvas({
        import cetz.draw: *

        catmull((-1,1), (2,2.5), (3,2), (6,3), mark: (end: ">", fill: black))

        line((0,0), (2,2.5), name: "t_t", stroke: (paint: green), mark: (end: ">", fill: green))
        content("t_t", [$arrow(t)(t)$], anchor: "east", padding: 0.1)

        line((0,0), (3,2), name: "t_tdt", stroke: (paint: purple), mark: (end: ">", fill: purple))
        content("t_tdt", [$arrow(t)(t + Delta t)$], anchor: "north-west", padding: 0.1)

        line((2,2.5), (3,2), stroke: (paint: blue), mark: (end: ">", fill: blue))

        circle((0,0), name: "o", radius: 0.2mm)
        content("o", [$O$], anchor: "east", padding: 0.1)

        circle((2,2.5), name: "a", radius: 0.2mm, fill: green)
        content("a", [$A$], anchor: "south", padding: 0.1)

        circle((3,2), name: "b", radius: 0.2mm, fill: purple)
        content("b", [$B$], anchor: "south", padding: 0.1)
      })
    })
  })
})

$arrow(v)(t)$ è un vettore che possiamo esprimere in componenti

$ arrow(v)(t) = (v_x(t), v_y(t), v_z(t)) $

Perciò:

$
arrow(t)(t) = (r_x(t), r_y(t), r_z(t)) \
v_x(t) = d / (d t) r_x(t) \
v_y(t) = d / (d t) r_y(t) \
v_z(t) = d / (d t) r_z(t)
$

=== Notazione

La velocità si misura in $"m/s"$

=== Proprietà della derivata

- $d / (d t)(arrow(f)(t) + arrow(g)(t)) = d / (d t) arrow(f)(t) + d / (d t) arrow(g)(t)$
- Sia $lambda(t)$ una funzione reale in $RR$ e $arrow(f)(t) in RR^3$: $d / (d t) (lambda(t) arrow(f)(t)) = (d / (d t) lambda(t)) arrow(f)(t) + lambda(t) (d / (d t) arrow(f)(t))$
- Siano $arrow(f)(t), arrow(g)(t) in RR^3$, allora: $d / (d t)(arrow(f)(t) arrow(g)(t)) = (d / (d t) arrow(f)(t)) arrow(g)(t) + arrow(f)(t) (d / (d t) arrow(g)(t))$
- $d / (d t)(arrow(f)(t) and arrow(g)(t)) = (d / (d t) arrow(f)(t)) and arrow(g)(t) + arrow(f)(t) and (d / (d t) arrow(g)(t))$

#pagebreak()

== Accelerazione

=== Definizione

Dato $arrow(t)(t)$ con velocità $arrow(v)(t)$, definiamo l'accelerazione come:

$
arrow(a)(t) =
lim_(Delta t arrow 0) (arrow(v)(t + Delta t) - arrow(v)(t)) / (Delta t) =
d / (d t) arrow(v)(t) =
d^2 / (d t^2) arrow(t)(t)
$

Graficamente, la velocità è sempre tangente alla traiettoria.

#block(width: 100%, height: 4cm, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      catmull((-3,1), (0,3), (3,2), mark: (end: ">", fill: black))

      line((0,0), (0,3), name: "t_t", stroke: (paint: green), mark: (end: ">", fill: green))
      content("t_t.mid", [$arrow(t)(t)$], anchor: "east", padding: 0.1)

      line((0,0), (1,2.90), name: "t_tdt", stroke: (paint: purple), mark: (end: ">", fill: purple))
      content("t_tdt.mid", [$arrow(t)(t + Delta t)$], anchor: "north-west", padding: 0.1)

      line((0,3), (1,2.90), stroke: (paint: blue))
      line((1,2.90), (3,2.70), name: "v_t", stroke: (paint: blue), mark: (end: ">", fill: blue))
      content("v_t.end", [$arrow(v)(t)$], anchor: "south", padding: 0.1)

      circle((0,0), name: "o", radius: 0.2mm)
      content("o", [$O$], anchor: "east", padding: 0.1)

      circle((0,3), name: "a", radius: 0.2mm, fill: green)
      content("a", [$A$], anchor: "south", padding: 0.1)

      circle((1,2.90), name: "b", radius: 0.2mm, fill: purple)
      content("b", [$B$], anchor: "south", padding: 0.1)
    })
  })
})

Si può identificare graficamente l'accelerazione come differenza dei vettori $arrow(v)(t)$ e $arrow(v)(t + Delta t)$ per $Delta t$ "piccolo".

#block(width: 100%, height: 4cm, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      catmull((-3,1), (0,3), (3,2), mark: (end: ">", fill: black))

      line((0,3), (1.5,3.15), name: "v_t", stroke: (paint: green), mark: (end: ">", fill: green))
      content("v_t.end", [$arrow(v)(t)$], anchor: "south", padding: 0.1)

      line((1,2.90), (2.5,2.75), name: "v_tdt", stroke: (paint: purple), mark: (end: ">", fill: purple))
      content("v_tdt.end", [$arrow(v)(t + Delta t)$], anchor: "west", padding: 0.1)

      line((0,3), (0.05,2.5), name: "a_t", stroke: (paint: red), mark: (end: ">", fill: red))
      content("a_t.end", [$arrow(a)(t)$], anchor: "north-east", padding: 0.1)

      circle((0,3), name: "a", radius: 0.2mm, fill: green)
      content("a", [$A$], anchor: "south", padding: 0.1)

      circle((1,2.90), name: "b", radius: 0.2mm, fill: purple)
      content("b", [$B$], anchor: "north", padding: 0.1)
    })
  })
})

Perciò vale la formula (si usa $tilde.eq$ poiché $Delta t$ è finito):

$ arrow(a)(t) tilde.eq (arrow(v)(t + Delta t) - arrow(v)(t)) / (Delta t) $

che graficamente è:

#block(width: 100%, height: 4cm, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((0,0), (4,3), name: "v_t", mark: (end: ">"))
      content("v_t", [$arrow(v)(t)$], anchor: "south-east", padding: 0.1)

      line((0,0), (5,2), name: "v_tdt", mark: (end: ">"))
      content("v_tdt", [$arrow(v)(t + Delta t)$], anchor: "north-west", padding: 0.1)

      line((4,3), (5,2), name: "a_t", stroke: (paint: red), mark: (end: ">", fill: red))
      content("a_t", [$arrow(a)(t)$], anchor: "south-west", padding: 0.1)
    })
  })
})

== Il "problema inverso"

Capita molto più spesso di avere informazioni su $arrow(v)(t)$ o $arrow(a)(t)$ e di voler ricostruire $arrow(t)(t)$.
Questo è definito come il "problema inverso" della cinematica, che si riconduce alla risoluzione di equazioni differenziali

#pagebreak()

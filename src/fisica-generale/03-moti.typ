#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

= Moti

Il moto si può classificare in base alle quantità definite (velocità, accelerazione, raggio di curva, $dots$).

== Rappresentazione intrinseca del moto

Si possono introdurre una serie di elementi per caratterizzare il moto in modo "intrinseco", cioè indipendente dal sistema di riferimento.
Il primo concetto presentato è quello della ascissa curvilinea.

== Ascissa curvilinea

L'ascissa curvilinea, $s(t)$, è la lunghezza della traiettoria percorsa fino al tempo $t$.

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

$
s(t) &tilde.eq sum_(t') |arrow(r)(t' + Delta t) - arrow(r)(t')| \
&tilde.eq sum_(t') Delta t |arrow(v)(t')| \
&= integral^t_0 |arrow(v)(t')| d t'
$

#pagebreak()

== Cerchio osculatore

Data una curva $arrow(r)(t)$ e un punto $P = arrow(r)(t_0)$, definiamo il cerchio osculatore come il cerchio che meglio approssima la curva vicino a $P$.

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      catmull((-5,2), (-3,2.5), (0,3), (4,2.9), (5,3), stroke: (paint: black), mark: (end: ">", fill: black))

      circle((0,0), radius: 30mm, stroke: (paint: blue))

      line((0,0), (0,3), stroke: (dash: "dashed"))

      circle((-5,2), name: "r", radius: 0.2mm, fill: black)
      content("r.mid", [$arrow(R)(0)$], anchor: "east", padding: 0.1)

      circle((0,3), name: "p", radius: 0.2mm, fill: black)
      content("p.mid", [$P = arrow(R)(t_0)$], anchor: "south", padding: 0.1)

      circle((0,0), name: "o", radius: 0.2mm, fill: black)
      content("o.mid", [$O$], anchor: "north", padding: 0.1)
    })
  })
})

Vicino a $P$, la curva è indistinguibile dal cerchio blu.

== Terna vettoriale intrinseca

Data una curva $arrow(r)(t)$ e un punto $P$ su $arrow(r)(t)$, possiamo definire la seguente terna di versori:

- $hat(u)_t$: è il versore tangente a $arrow(r)(t)$ in $P$
- $hat(u)_n$: è il versore che punta verso il centro del raggio osculatore
- $hat(u)_b$: è il versore ortogonale a $hat(u)_t$ e $hat(u)_n$ ($hat(u)_t and hat(u)_n$)

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

      line((0,0,0), (4.425,2.2,1.7), name: "r_t", stroke: (paint: red), mark: (end: ">", fill: red))
      content("r_t.mid", [$arrow(r)(t)$], anchor: "south-east", padding: 0.1)

      line((4.425,2.2,1.7), (4.425,1.5,1.7), name: "u_n", stroke: (paint: black), mark: (end: ">", fill: black))
      content("u_n.end", [$hat(u)_n$], anchor: "north", padding: 0.1)

      line((4.425,2.2,1.7), (5,2.2,1.7), name: "u_t", stroke: (paint: black), mark: (end: ">", fill: black))
      content("u_t.end", [$hat(u)_t$], anchor: "west", padding: 0.1)

      line((4.425,2.2,1.7), (4.425,2.2,1), name: "u_b", stroke: (paint: black), mark: (end: ">", fill: black))
      content("u_b.end", [$hat(u)_b$], anchor: "south", padding: 0.1)

      circle((4.425,2.2,1.7), name: "p", radius: 0.2mm, fill: blue)
      content("p.mid", [$P$], anchor: "south-east", padding: 0.1)
    })
  })
})

Si possono esprimere velocità e accelerazione in funzione della terna soprascritta.
Questa rappresentazione è utile perchè è indipendente da un sistema di riferimento fissato a priori.

#pagebreak()

== Velocità

Il vettore velocità è, per definizione, parallelo a $hat(u)_t$.

$ arrow(v)(t) = (d / (d t) s(t)) hat(u)_t = dot(s)(t)hat(u)_t $

Questa equazione motiva la definizione $dot(s)(t) =$ "velocità scalare"

== Accelerazione

$ arrow(a)(t) = dot.double(s)(t) hat(u)_t + (dot(s)(t)^2) / rho hat(u)_n $

- $dot.double(s)(t)$: accelerazione tangenziale
- $(dot(s)(t)^2) / rho$: accelerazione normale e centripeta

=== Moto rettilineo uniforme

Un moto caratterizzato da $arrow(a)(t) = 0 forall t$, quindi $arrow(v)(t) arrow arrow(v)$ costante $forall t$.

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-6,-3), (6,3))

      line((2,1), (4,2), name: "u_t", stroke: (paint: red), mark: (end: ">", fill: red))
      content("u_t.end", [$hat(u)_t$], anchor: "north", padding: 0.2)
    })
  })
})

$ arrow(v)(t) = dot(s)(t) hat(u)_t = v hat(u)_t $

$dot(s)(t) = v$ costante.
La legge del moto (cioè la legge che descrive $arrow(r)(t)$) è:

$ arrow(r)(t) = arrow(r)(t_0) + (t-t_0)v hat(u)_t $

=== Moto uniformemente accelerato

Un moto caratterizzato da $arrow(a)(t) = arrow(a)$ costante.
Siccome $arrow(a)$ è costante, tutto il moto si svolge su un piano.
La legge del moto è:

$ arrow(r)(t) = 1 / 2 (t-t_0)^2 arrow(a) + (t-t_0) arrow(v)(t_0) + arrow(r)(t_0) $

== Coordinate polari

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((0,0), (5,0), name: "x", mark: (end: ">"))
      content("x.end", [$hat(x)$], anchor: "west", padding: 0.1)

      line((0,0), (0,3), name: "y", mark: (end: ">"))
      content("y.end", [$hat(y)$], anchor: "south", padding: 0.1)

      line((0,0), (3,2), name: "r", stroke: (paint: red), mark: (end: ">", fill: red))
      content("r.mid", [$r$], anchor: "south-east", padding: 0.1)

      line((3,0), (3,2), stroke: (dash: "dashed", paint: red))

      arc((0,0), name: "phi", anchor: "origin", start: 0deg, stop: 35deg, radius: 10mm, stroke: (paint: blue))
      content("phi.mid", [$phi$], anchor: "west", padding: 0.1)

      circle((3,2), name: "R", radius: 0.2mm, fill: black)
      content("R.end", [$arrow(R)=(x,y)$], anchor: "south-west", padding: 0.1)
    })
  })
})

- $r = |arrow(r)|$
- $phi$ angolo tra $arrow(R)$ e $hat(x)$ (angolo polare)
- $x = r cos(phi)$
- $y = r sin(phi)$

Con un nuovo sistema di versori $hat(u)_r$ e $hat(u)_phi$ che dipendono dal punto.

- $hat(u)_r$: è lungo $arrow(r)$ e punta "all'esterno"
- $hat(u)_phi$: è ortogonale a $hat(u)_r$ punta in direzione antioraria

== Coordinate cilindriche

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

      line((0,0,0), (3,2,2), name: "r", stroke: (paint: red), mark: (end: ">", fill: red))
      content("r.mid", [$r$], anchor: "south-east", padding: 0.1)

      line((3,0,0), (3,0,2), stroke: (dash: "dashed"))
      line((0,0,2), (3,0,2), stroke: (dash: "dashed"))
      line((3,0,2), (3,2,2), stroke: (dash: "dashed"))

      line((0,0,0), (3,0,2), name: "rho", stroke: (dash: "dashed", paint: blue), mark: (end: ">", fill: blue))
      content("rho.mid", [$rho$], anchor: "south-west", padding: 0.1)

      on-xz({
        arc((0,0), name: "phi", anchor: "origin", start: 35deg, stop: 90deg, radius: 10mm, stroke: (paint: blue))
        content("phi.mid", [$phi$], anchor: "north", padding: 0.1)
      })

      circle((3,2,2), name: "R", radius: 0.2mm, fill: black)
      content("R.end", [$arrow(R)=(x,y)$], anchor: "south-west", padding: 0.1)
    })
  })
})

- $rho$: lunghezza (modulo) del vettore blu
- $phi$: angolo tra vettore blu e $hat(x)$

$ arrow(r) = (x,y,z) = (rho cos(phi), rho sin(phi), z) $

== Moto circolare

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-2,0), (5,0), name: "x", mark: (end: ">"))
      content("x.end", [$hat(x)$], anchor: "west", padding: 0.1)

      line((0,-2), (0,3), name: "y", mark: (end: ">"))
      content("y.end", [$hat(y)$], anchor: "south", padding: 0.1)

      circle((0,0), radius: 15mm)

      line((0,0), (1.325,0.7), name: "r", stroke: (paint: red), mark: (end: ">", fill: red))

      line((1.325,0.7), (2,1.05), name: "u_r", stroke: (paint: blue), mark: (end: ">", fill: blue))
      content("u_r.end", [$hat(u)_r$], anchor: "west", padding: 0.1)

      line((1.325,0.7), (0.7,1.9), name: "u_phi", stroke: (paint: blue), mark: (end: ">", fill: blue))
      content("u_phi.end", [$hat(u)_phi$], anchor: "south", padding: 0.1)

      circle((1.325,0.7), name: "R", radius: 0.2mm, fill: black)
      content("R.mid", [$arrow(R)(t) = R hat(u)_r$], anchor: "north-west", padding: 0.2)
    })
  })
})

Moto lungo una circonferenza, è immediato vedere che $hat(u)_phi = hat(u)_t$.
Per descrivere il moto:

$ arrow(r)(t) = R hat(u)_r(t) = R cos(phi) hat(x) + R sin(phi) hat(y) $

=== Velocità

$
dot(arrow(r))(t) &= -dot(phi) R sin(phi) hat(x) + dot(phi) R cos(phi) hat(y) \
&= dot(phi) R (-sin(phi) hat(x) + cos(phi) hat(y))
$

- $dot(phi)(t)$: velocità angolare (la variazione dell'angolo polare in un piccolo intervallo di tempo).

=== Accelerazione

$ arrow(a)(t) = R dot.double(phi)(t) hat(u)_phi - R dot(phi)(t)^2 hat(u)_r $

- $R dot.double(phi)$: accelerazione tangenziale
- $-R dot(phi)^2$: accelerazione normale o centripeta

Se $R dot.double(phi) = 0$ parliamo di moto circolare uniforme, dove la velocità angolare è costante ($omega$), ma l'accelerazione centripeta è $a_n = -R omega^2 != 0$.
$phi$ si misura in radianti (rad), $dot(phi)(t)$ si misura (rad/s).

#pagebreak()

== Moti periodici

Un moto è detto periodico con periodo $T$ se:

$ arrow(r)(t+n T) = arrow(r)(t) $

$forall n in NN$

-[$T$] periodo
-[$upsilon$] frequenza ($1 / T$)
-[$omega$] pulsazione ($(2 pi) / T$)

Il moto circolare uniforme è un esempio di moto periodico

=== Moto armonico

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      line((-1,0), (9,0), name: "t", mark: (end: ">"))
      content("t.end", [$t$], anchor: "west", padding: 0.1)

      line((0,-2), (0,3), name: "x_t", mark: (end: ">"))
      content("x_t.end", [$x(t)$], anchor: "south", padding: 0.1)

      line((0,1), (6,1), stroke: (dash: "dashed", paint: red))

      set-origin((0,-1))
      plot.plot(
        size: (9, 2),
        axis-style: none,
        x-tick-step: none,
        y-tick-step: none,

        plot.add(
          domain: (-2 * calc.pi, 2 * calc.pi),
          x => calc.cos(x)
        )
      )
    })
  })
})

Un qualsiasi moto caratterizzato da una equazione differenziale del tipo:

$ dot.double(arrow(r))(t) = -A arrow(r)(t) $

$forall A > 0$

Data $dot.double(f)(t) = -A f(t)$, la soluzione più generale è:

$ f(t) = alpha sin((omega t + phi_0)) $

dove $omega = sqrt(A)$, mentre $alpha$ e $phi_0$ sono parametri liberi che vanno fissati dalle condizioni iniziali.

#pagebreak()

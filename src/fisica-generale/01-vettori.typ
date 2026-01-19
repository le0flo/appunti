#import "@preview/cetz:0.4.2"

= Vettori

== Notazione

$arrow(a) in RR^n$

$ arrow(a) = (a_1, a_2, dots, a_n) : a_j in RR^n $

== Definizioni

- *Quantità scalari*: sono le quantità definite da un numero (un vettore unidimensionale) e un'unità di misura (esempio: temperatura)
- *Quantità vettoriali*: definite da un vettore $arrow(a) in RR^n : n > 1$ e un unità di misura (esempio: distanza)
- *Quantità tensoriali*: ??

== Rappresentazione grafica

Un vettore è rappresentato da una freccia, che ha:

- Una direzione
- Un verso
- Modulo (un valore assoluto ed è la lunghezza della suddetta freccia)

Dato un $arrow(a)$, il suo inverso è un vettore che ha uguale modulo ma verso opposto.

== Somma

Regola del parallelogramma:

#block(width: 100%, height: 2cm, {
  align(center + horizon, {
    columns(2, {
      [
        - #text(stroke: blue)[blu $= arrow(a) + arrow(b)$]
        - #text(stroke: green)[verde $= arrow(a) - arrow(b)$]
      ]

      colbreak()

      cetz.canvas({
        import cetz.draw: *

        line((0,0), (3,2), name: "a", mark: (end: ">"))
        content("a.mid", [$arrow(a)$], anchor: "south-east", padding: 0.1)

        line((0,0), (4,0), name: "b", mark: (end: ">"))
        content("b.mid", [$arrow(b)$], anchor: "north", padding: 0.15)

        line((3,2), (7,2), stroke: (dash: "dashed"))
        line((4,0), (7,2), stroke: (dash: "dashed"))

        line((0,0), (7,2), stroke: (paint: blue), mark: (end: ">", fill: blue))
        line((3,2), (4,0), stroke: (paint: green), mark: (end: ">", fill: green))
      })
    })
  })
})

== Prodotto per scalare

Dati $lambda in RR$ e $arrow(a) in RR^n$, $arrow(b) = lambda arrow(a) in RR^n$ è un vettore con stessa direzione di $arrow(a)$ se:

- Se $lambda > 0$, stesso verso
- Se $lambda < 0$, verso opposto

Il modulo di $arrow(b)$ è uguale a $|lambda|$ volte quello di $arrow(a)$

== Prodotto scalare

Un operazione che prende due vettori e restituisce un numero.

#block(width: 100%, height: 4cm, {
  align(center + horizon, {
    columns(2, {
      [$ arrow(a) * arrow(b) = |arrow(a)| * |arrow(b)| * cos(theta) $]

      colbreak()

      cetz.canvas({
        import cetz.draw: *

        line((0,0), (3,2), name: "a", stroke: (paint: red), mark: (end: ">", fill: red))
        content("a.mid", [$arrow(a)$], anchor: "south-east", padding: 0.1)

        line((0,0), (7,0), name: "b", stroke: (paint: blue), mark: (end: ">", fill: blue))
        content("b.mid", [$arrow(b)$], anchor: "north", padding: 0.15)

        arc((0,0), name: "theta", anchor: "origin", start: 0deg, stop: 35deg, radius: 10mm)
        content("theta.mid", [$theta$], anchor: "west", padding: 0.15)
      })
    })
  })
})

Dove $|arrow(a)|$ è il modulo di $|arrow(a)|$ (similmente per $arrow(b)$) e $theta$ è l'angolo compreso tra $arrow(a)$ e $arrow(b)$.

=== Proprietà

- Commutativa: $arrow(a) * arrow(b) = arrow(b) * arrow(a)$
- Distributiva: $arrow(a) * (arrow(b) + arrow(c)) = arrow(a) * arrow(b) + arrow(a) * arrow(c)$
- $forall lambda in RR : lambda (arrow(a) * arrow(b)) = (lambda arrow(a)) * arrow(b) = arrow(a) * (lambda arrow(b))$

== Componente

Dato $arrow(a) in RR^n$ e vettore di modulo 1 (vettore unitario)  $arrow(u) in RR^n$, definiamo la componente di $arrow(a)$ lungo $arrow(u)$ il numero:

$ arrow(a) * arrow(u) = |arrow(a)| * |arrow(u)| * cos(theta) = |arrow(a)| * cos(theta) $

=== Versore

Chiamiamo versori i vettori di modulo 1, e li indichiamo con $hat(u)$.

=== Vettore componente

Dati $arrow(a), hat(u)$, definiamo il vettore componente $arrow(a)_u$ come il vettore lungo $hat(u)$ con modulo $|arrow(a) * hat(u)|$.

$ arrow(a)_u = a_(hat(u)) * hat(u) $

Il modulo di un vettore (o norma) è legato al prodotto scalare da $|a^2| = arrow(a) * arrow(a)$, infatti $arrow(a) * arrow(a) = |a| * |a| * cos(theta)$.

#pagebreak()

== Prodotto vettoriale

Un operazione che prende 2 vettori e restituisce un vettore in $RR^3$.

$ arrow(a) and arrow(b) &"a vettor b"$

$arrow(a) and arrow(b)$ è definito come il vettore che vive lungo la direzione ortogonale al piano individuato da $arrow(a)$ e $arrow(b)$, che ha modulo $|arrow(a)|*|arrow(b)|*sin(theta)$ e un verso determinato dalla "regola della mano destra".

$ arrow(c) = arrow(a) and arrow(b) = arrow(a) * arrow(b) * sin(theta) $

#block(width: 100%, height: 11cm, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((0,0,0), (5,0,0), name: "x", mark: (end: ">"))
      content("x.end", [$hat(x)$], anchor: "west", padding: 0.1)

      line((0,0,0), (0,5,0), name: "y", mark: (end: ">"))
      content("y.end", [$hat(y)$], anchor: "south", padding: 0.1)

      line((0,0,0), (0,0,5), name: "z", mark: (end: ">"))
      content("z.end", [$hat(z)$], anchor: "east", padding: 0.1)

      line((0,0,0), (2,0,3), name: "a", stroke: (paint: red), mark: (end: ">", fill: red))
      content("a.end", [$arrow(a)$], anchor: "north-east", padding: 0.1)

      line((0,0,0), (3,0,1), name: "b", stroke: (paint: blue), mark: (end: ">", fill: blue))
      content("b.end", [$arrow(b)$], anchor: "north-west", padding: 0.1)

      line((0,0,0), (1.5,5,1), name: "c", stroke: (paint: purple), mark: (end: ">", fill: purple))
      content("c.mid", [$arrow(c)$], anchor: "west", padding: 0.1)

      on-xz({
        arc((0,0,0), name: "theta", anchor: "origin", start: 20deg, stop: 55deg, radius: 10mm)
        content("theta.mid", [$theta$], anchor: "north-west", padding: 0.1)
      })
    })
  })
})

=== Proprietà

- Distributiva: $(arrow(a) * arrow(b)) and arrow(c) = arrow(a) and arrow(c) + arrow(b) and arrow(c)$
- Non vale la proprietà associativa: $(arrow(a) and arrow(b)) and arrow(c) != arrow(a) and (arrow(b) and arrow(c))$

#pagebreak()

== Vettori e coordinate

Possiamo passare ad una trattazione algebrica dei vettori introducendo un sistema di riferimento.
Questo significa introdurre un insieme di vettori privilegiato ed esprimere ogni altro vettore in termini delle componenti corrispondente.

In una dimensione, un sistema di riferimento è dato da un singolo versore $hat(u)$:

#block(width: 100%, height: 3cm, {
  align(center + horizon, {
    columns(2, {
      [$
        arrow(v) = v_hat(u) * hat(u) \
        |arrow(v)| = arrow(v) * hat(u) = |arrow(v)_hat(u)|
      $]

      colbreak()

      cetz.canvas({
        import cetz.draw: *

        line((-3,0), (3,0), name: "u", mark: (symbol: ">"))
        content("u.end", [$hat(u)$], anchor: "north", padding: 0.1)

        line((0,0), (2,0), name: "v", stroke: (paint: red), mark: (end: ">", fill: red))
        content("v.end", [$arrow(v)$], anchor: "south", padding: 0.1)

        circle((0,0), name: "o", radius: 0.2mm, fill: black)
        content("o.mid", [$O$], anchor: "north", padding: 0.1)
      })
    })
  })
})

In due dimensioni, un sistema di riferimento è dato da due versori ortogonali:

#block(width: 100%, height: 5cm, {
  align(center + horizon, {
    columns(2, {
      [$ arrow(w) = w_hat(u) hat(u) + w_hat(v) hat(v) arrow (w_hat(u), w_hat(v)) in RR^2 $]

      colbreak()

      cetz.canvas({
        import cetz.draw: *

        line((-0.5,0), (4,0), name: "u", mark: (end: ">"))
        content("u.end", [$hat(u)$], anchor: "north-west", padding: 0.1)

        line((0,-0.5), (0,3), name: "v", mark: (end: ">"))
        content("v.end", [$hat(v)$], anchor: "south", padding: 0.1)

        line((2.5, 0), (2.5, 2), stroke: (dash: "dashed", paint: green))
        line((0, 2), (2.5, 2), stroke: (dash: "dashed", paint: green))

        line((0,0), (2.5, 0), name: "w_u", stroke: (paint: blue), mark: (end: ">", fill: blue))
        content("w_u.mid", [$w_hat(u)$], anchor: "north", padding: 0.1)

        line((0,0), (0, 2), name: "w_v", stroke: (paint: blue), mark: (end: ">", fill: blue))
        content("w_v.mid", [$w_hat(v)$], anchor: "east", padding: 0.1)

        line((0,0), (2.5, 2), name: "w", stroke: (paint: blue), mark: (end: ">", fill: blue))
        content("w.end", [$arrow(w)$], anchor: "south-west", padding: 0.1)

        arc((0,0), name: "theta", anchor: "origin", start: 0deg, stop: 40deg, radius: 10mm)
        content("theta.mid", [$theta$], anchor: "west", padding: 0.1)

        circle((0,0), name: "o", radius: 0.2mm, fill: black)
        content("o.mid", [$O$], anchor: "north-east", padding: 0.1)
      })
    })
  })
})

In tre dimensioni, un sistema di riferimento è determinato da tre versori ortogonali (di solito i versori sono indicati come $hat(x), hat(y), hat(z)$ oppure come $hat(i), hat(j), hat(k)$):

#align(center, {
  cetz.canvas({
    import cetz.draw: *

    line((0,0,0), (3,0,0), name: "i", mark: (end: ">"))
    content("i.end", [$hat(i)$], anchor: "west", padding: 0.1)

    line((0,0,0), (0,3,0), name: "j", mark: (end: ">"))
    content("j.end", [$hat(j)$], anchor: "south", padding: 0.1)

    line((0,0,0), (0,0,3), name: "k", mark: (end: ">"))
    content("k.end", [$hat(k)$], anchor: "east", padding: 0.1)

    circle((0,0,0), name: "o", radius: 0.2mm, fill: black)
    content("o.mid", [$O$], anchor: "north-west", padding: 0.1)
  })
})

Siccome i versori sono ortogonali: $hat(i) and hat(j) = hat(k), hat(j) and hat(i) = -hat(k)$

#pagebreak()

== Operazioni tra vettori in coordinate

Le coordinate sono le componenti di un vettore rispetto ai versori (o "assi") del sistema di riferimento.

- *Somma*: $arrow(a) = (a_x, a_y, a_z), arrow(b) = (b_x, b_y, b_z)$

$ arrow(a) + arrow(b) = (a_x+b_x, a_y+b_y, a_z+b_z) $

- *Prodotto per scalare*: $lambda in RR, arrow(a) in RR^3, arrow(a) = (a_x, a_y, a_z)$

$ lambda arrow(a) = (lambda a_x, lambda a_y, lambda a_z) $

- *Prodotto scalare*: $arrow(a) = a_i hat(i) + a_j hat(j) + a_k hat(k), arrow(b) = b_i hat(i) + b_j hat(j) + b_k hat(k)$

$
arrow(a) * arrow(b) = a_i b_i + a_j b_j + a_k b_k \
arrow(a) * arrow(b) = |arrow(a)| |arrow(b)| cos(theta) \
theta = arccos([(a_i b_i + a_j b_j + a_k b_k) / (|arrow(a)||arrow(b)|)])
$

- *Prodotto vettoriale*: $arrow(a) = a_i hat(i) + a_j hat(j) + a_k hat(k), arrow(b) = b_i hat(i) + b_j hat(j) + b_k hat(k)$

$ arrow(a) and arrow(b) = (a_j b_k - a_k b_j, a_k b_i - a_i b_k, a_i b_j - a_j b_i) $

== Regola mnemonica del determinante

Le componenti di $arrow(a) and arrow(b)$ si ottengono calcolando il determinante di:

$
det(mat(hat(i),hat(j),hat(k); a_i, a_j, a_k; b_i, b_j, b_k))
= hat(i) (a_j b_k - a_k b_j) - hat(j) (a_i b_k - a_k b_i) + hat(k) (a_i b_j - a_j b_i)
$

#pagebreak()

#import "@preview/cetz:0.4.2"

= Statica

La statica si occupa dello studio delle forze in situazioni di equilibrio.

== Forze

Una forza è "l'entità" che causa una variazione del moto di un corpo.
Matematicamente, una forza è descritta da un vettore $arrow(F)$.

- *"Intensità"*: corrisponde a $|arrow(F)|$
- *Direzione e verso*: corrispondono alla direzione e verso di $arrow(F)$
s
Quando si applicano due forze allo stesso oggetto, si può descrivere la forza risultante come la somma dei vettori delle due forze.

- *Vettori liberi*: vettori definiti da modulo, direzione e verso
- *Vettori applicati*: vettori in cui, oltre a modulo, direzione e verso, si specifica anche il punto di applicazione

È importante descrivere le forze come vettori applicati perchè il punto di applicazione è rilevante.

== Momento di una forza

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-1,0), (6,0), name: "x", mark: (end: ">"))
      content("x.end", [$hat(x)$], anchor: "west", padding: 0.1)

      line((0,-1), (0,4), name: "y", mark: (end: ">"))
      content("y.end", [$hat(y)$], anchor: "south", padding: 0.1)

      line((0,0), (3,2), name: "r", stroke: (paint: red), mark: (end: ">", fill: red))
      content("r.mid", [$arrow(R)$], anchor: "north-west", padding: 0.1)

      line((3,2), (4,2.66), stroke: (dash: "dashed"))

      line((3,2), (2.33,3), name: "f", stroke: (paint: green), mark: (end: ">", fill: green))
      content("f.end", [$arrow(F)$], anchor: "south", padding: 0.1)

      circle((0,0), name: "o", radius: 0.2mm, fill: black)
      content("o.mid", [$O$], anchor: "north-east", padding: 0.1)

      circle((3,2), name: "p", radius: 0.2mm, fill: black)
      content("p.mid", [$P$], anchor: "north-west", padding: 0.1)
    })
  })
})

Dati i punti $O$, $P$ e $arrow(R)$, si definisce il momento della forza $arrow(F)$ (che agisce su $P$) rispetto ad $O$ come:

$ arrow(M) = arrow(R) and arrow(F) $

== Quiete

Un punto è in quiete in un sistema di riferimento, se ha una velocità nulla in ogni istante.

#pagebreak()

== Equilibrio

Se un sistema di punti inizialmente in quiete rimane in quiete (anche se agiscono forze), si dice che si trova in uno stato di equilibrio.
Si parla di equilibrio stabile se "piccole variazioni" dal sistema portano a piccoli spostamenti, altrimenti l'equilibrio è instabile.

#block(width: 100%, {
  align(center + horizon, {
    columns(2, {
      block(width: 100%, {
        align(center + horizon, {
          cetz.canvas({
            import cetz.draw: *

            arc((0,0), anchor: "origin", start: -180deg, stop: 0deg, radius: 22.5mm, stroke: (paint: red))

            circle((0,-2), radius: 2.5mm, fill: green)
          })
        })
      })

      [Equilibrio stabile]

      colbreak()

      block(width: 100%, {
        align(center + horizon, {
          cetz.canvas({
            import cetz.draw: *

            arc((0,0), anchor: "origin", start: 0deg, stop: 180deg, radius: 20mm, stroke: (paint: red))

            circle((0,2.25), radius: 2.5mm, fill: green)
          })
        })
      })

      [Equilibrio instabile]
    })
  })
})

== Enunciato principale della statica

Condizione necessaria e sufficiente affinchè un insieme di punti (o un "corpo esteso") sia all'equilibrio è che la risultante di tutte le forze sia nulla e che il momento totale delle forze sia nullo.

$
sum_i arrow(F)_i = 0 \
sum_i arrow(R)_i and arrow(F)_i = 0
$

== Reazioni vincolari

Si parla di reazioni vincolari quando ci sono dei vincoli.
Un vincolo è una condizione che rende inaccessibili al punto alcune porzioni dello spazio.

esempio, il tavolo impedisce alla palla di accedere ai punti con $y < 0$:

#block(width: 100%, {
  align(center + horizon, {
    cetz.canvas({
      import cetz.draw: *

      line((-5, 0), (5,0), name: "tavolo")
      content("tavolo.mid", [Tavolo], anchor: "north", padding: 0.1)

      circle((0,2.5), radius: 25mm)
    })
  })
})

A livello microscopico, il tavolo si "deforma un po'", e possiamo pensarlo come un insieme di piccole molle.
Un vincolo si dice liscio se non oppone resistenza rispetto ad un moto tangenziale alla superficie del vincolo ("no attrito").

#pagebreak()

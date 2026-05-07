#let appunti(materia: "", doc) = {
  set page(
    margin: 40pt,
    footer: context [
      #align(right, {
        counter(page).display(
          "1",
          both: false,
        )
      })
    ]
  )

  set heading(numbering: "1.")

  show title: set text(size: 20pt)
  show title: set align(left)
  show link: set text(fill: blue)
  show heading: set block(above: 2em, below: 2em)
  show list: set block(above: 1.5em, below: 1.5em)
  show enum: set block(above: 1.5em, below: 1.5em)

  title[Appunti di #materia]

  [
    Dal corso di Ingegneria Informatica dell'Università di Bologna.
    Per consigli o correzioni, contattatemi.
    Info su #link("https://leoflo.me/")[leoflo.me].
  ]

  block(height: 1em)

  doc
}

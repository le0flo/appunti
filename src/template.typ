#let appunti(materia: "", doc) = {
  set document(
    title: [Appunti di #materia]
  )

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

  show link: set text(fill: blue)
  show heading: set block(above: 2em, below: 2em)
  show list: set block(above: 1.5em, below: 1.5em)
  show enum: set block(above: 1.5em, below: 1.5em)

  align(left, title())

  [
    Dal corso di Ingegneria Informatica dell'Università di Bologna.
    Per consigli o correzioni, mi trovate su #link("https://leoflo.me/")[leoflo.me].
  ]

  block(height: 1em)

  doc
}

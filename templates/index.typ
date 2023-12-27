#import "titlepage.typ": titlepage
// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set text(font: "TeX Gyre Termes", size: 14pt, lang: "ru", hyphenate: true)
  set heading(numbering: "1.1")

  // Структура
  // Титульный лист
  titlepage(title: "Test",
  authors: (
    "В.Д. Панков",
  ),
  teachers: ("И. А. Юрьева",),
  education: "ГУАП")
  pagebreak()


  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set page(margin: (left: 25mm, right: 15mm, top: 20mm, bottom: 25mm))
  set par(justify: true, leading: 1.2em)
  show heading: set block(below: 16pt, above: 32pt)
  show heading: set text(size: 14pt)
  set list(marker: [---])
  set par(first-line-indent: 1.25cm)
  show outline: set align(center)
  show table: set text(hyphenate: false)
  show table: set par(justify: false)
  
  show figure: it =>  [#align(center, [#it.body #it.caption \ ])]
  set figure(supplement: "Рисунок")
  set figure.caption(separator: [ -- ])
  set page(numbering: "1", number-align: end)

  body
}
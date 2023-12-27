#import "titlepage.typ": titlepage


#let project(
  authors: (),
  title: "",
  body,
) = {
  set document(author: authors, title: title)
  set text(font: "TeX Gyre Termes", size: 14pt, lang: "ru", hyphenate: true)
  set heading(numbering: "1.1")

  // Структура
  // Титульный лист
  titlepage(title: title,
  authors: authors,
  teachers: ("Преподаватель 1",),
  education: "ГУАП")
  pagebreak()


  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set page(margin: (left: 25mm, right: 15mm, top: 20mm, bottom: 25mm))
  set par(justify: true, leading: 1.2em)
  // show heading: set block(below: 16pt, above: 32pt)
  show heading: set text(size: 14pt)
  set list(marker: [---])
  show outline: set align(center)
  show table: set text(hyphenate: false)
  show table: set par(justify: false)
  
  show figure: it =>  [#align(center, [#it.body #it.caption \ ])]
  set figure(supplement: "Рисунок")
  set figure.caption(separator: [ -- ])
  set page(numbering: "1", number-align: center)

  let indent = 1.25cm
  set par(first-line-indent: indent)
  show heading: it => {
   stack(dir: ltr, h(indent), it)
   par(text(size:0.35em, h(0.0em)))
  }
  body
}
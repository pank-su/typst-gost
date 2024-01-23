#import "titlepage.typ": titlepage
#import "toc.typ": toc
#import "escd.typ": basicFrame


#let index(
  authors: (),
  title: "",
  body,
) = {
  set document(author: authors, title: title)


  // Структура
  // Титульный лист
  titlepage(title: "",
  authors: authors,
  
  position: "Преподаватель",
  education: "МИНИСТЕРСТВО НАУКИ И ВЫСШЕГО ОБРАЗОВАНИЯ РОССИЙСКОЙ ФЕДЕРАЦИИ\nфедеральное государственное автономное образовательное учреждение высшего образования\n«Санкт-Петербургский государственный университет аэрокосмического приборостроения»", group: "С021к", documentName: "ПОЯСНИТЕЛЬНАЯ ЗАПИСКА К КУРСОВОМУ ПРОЕКТУ")
  pagebreak()


  
  // Содержание
  toc()

  // pagebreak()

  // Настройки страниц.
  set text(font: "Times New Roman", size: 14pt, lang: "ru", hyphenate: true)
  set heading(numbering: "1.1")
  set page(margin: (left: 25mm, right: 10mm, top: 20mm, bottom: 25mm),  background: basicFrame())
  set par(justify: true, leading: 1.2em)
  // show heading: set block(below: 16pt, above: 32pt)
  set list(marker: [---])
  show table: set text(hyphenate: false)
  show table: set par(justify: false)
  
  show figure: it =>  [#align(center, [#it.body #it.caption \ ])]
  set figure(supplement: "Рисунок")
  set figure.caption(separator: [ -- ])


  let indent = 1.25cm
  set par(first-line-indent: indent)
  show heading: set text(size: 14pt)
  show heading.where(numbering: "1.1"): it => {
   stack(dir: ltr, h(indent), it)
   par(text(size:0.35em, h(0.0em)))
  }
  show heading.where(numbering: none): it => {
   it
   par(text(size:0.35em, h(0.0em)))
  }
  show heading.where(level: 1): it => [#pagebreak() #it]
  show figure.where(kind: table): set figure.caption(position: top)

  body
}
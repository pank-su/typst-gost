#import "escd.typ": outlineFrame

#let toc() = {
  show heading: set text(size: 14pt)
  show heading: set align(center)
  //counter(page).update(3)
  set page(background: 
    outlineFrame(),
    margin: (left: 25mm, right: 10mm, top: 20mm, bottom: 25mm),
    paper: "a4"
  )
  
  outline(depth: 3, indent: true, title: align(center)[#upper("Содержание")])
}
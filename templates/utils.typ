#let ch(content) = {
  show heading: it => {
    text(it, size: 14pt)
  }
  align(heading(upper(content), numbering: none), center)
}
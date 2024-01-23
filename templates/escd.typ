#import "../libs/tablex.typ": tablex, cellx, rowspanx, colspanx

#let outlineFrame() = {

  set text(font: "Times New Roman", size: 11pt, lang: "ru", hyphenate: true)

  rect(width: 100%, height: 100%, outset: (left: -20mm, right: -5mm, top: -5mm, bottom: -5mm), inset: (bottom: 5mm, top: 5mm, right: 5mm, left: 20mm))[
    
    #align(bottom)[
      #tablex(columns: (8mm, 10mm, 23mm, 15mm, 10mm, 67mm, 15mm, 15mm, 22mm,), inset: (bottom: 5mm),
    [],[], [], [], [], cellx(colspan: 4, rowspan: 3, inset: 0pt, align: center + horizon)[#text("КП 09.02.07.09 ПЗ", size: 22pt)],
    [], [], [], [], [], 

    cellx(inset: 0pt, align: center + horizon)[#text("Изм.", size: 10pt)], cellx(inset: 0pt, align: center + horizon)[#text("Лист", size: 10pt)], cellx(inset: 0pt, align: center + horizon)[#text("№ докум.", size: 10pt)], cellx(inset: 0pt, align: center + horizon)[#text("Подп.", size: 10pt)], cellx(inset: 3pt, align: center + horizon)[#text("Дата", size: 10pt)],

    cellx(inset: (left: 2pt), align: start + horizon, colspan: 2)[Разраб.], cellx(inset: (left: 2pt), align: start + horizon, )[Панков В.Д.], [], [], cellx(inset: (left: 2pt), align: center + horizon, rowspan: 5)[Разработка мобильного приложения "Музыкальный плеер" #text("\nПояснительная записка") ], cellx(inset: 0pt, align: center + horizon, )[Лит.], cellx(inset: 0pt, align: center + horizon, )[Лиcт], cellx(inset: 0pt, align: center + horizon, )[Лиcтов],

    cellx(inset: (left: 2pt), align: start + horizon, colspan: 2)[Пров.], cellx(inset: (left: 2pt), align: start + horizon, )[Юрьева И.А.], [], [], cellx(inset: 0pt, align: center + horizon, )[#rect(height: 100%, width: 33%)], cellx(inset: 0pt, align: center + horizon, )[#counter(page).update(3)#counter(page).display()], cellx(inset: 0pt, align: center + horizon, )[#locate(loc => [#counter(page).final(loc).at(0)])],

    cellx(inset: (left: 2pt), align: start + horizon, colspan: 2)[], [], [], [],  cellx(inset: 0pt, align: center + horizon, colspan: 3, rowspan: 3)[#text("ФСПО ГУАП", size: 12pt)],

    cellx(inset: (left: 2pt), align: start + horizon, colspan: 2)[Н. контр.], [], [], [],

    cellx(inset: (left: 2pt), align: start + horizon, colspan: 2)[Утв]
    )
    ]
  ]
  
}

#let basicFrame() = {
  set text(font: "Times New Roman", size: 9pt, lang: "ru", hyphenate: true)
  rect(width: 100%, height: 100%, outset: (left: -20mm, right: -5mm, top: -5mm, bottom: -5mm), inset: (bottom: 5mm, top: 5mm, right: 5mm, left: 20mm))[
    #align(bottom)[
      #tablex(columns: (7mm, 10mm, 23mm, 15mm, 10mm, 110mm, 10mm), 
      inset: (bottom: 5mm),

      [], [], [], [], [], cellx(inset: 0pt, align: center + horizon, rowspan: 3)[#text("КП.090207.09ПЗ", size: 22pt)], cellx(inset: (left: 2pt), align: start + horizon)[Лист],

      [], [], [], [], [], cellx(inset: (left: 2pt), align: center + horizon, rowspan: 2)[#text(counter(page).display(), size: 14pt)],

      cellx(inset: (left: 2pt), align: start + horizon)[Изм.], cellx(inset: (left: 2pt), align: start + horizon)[Лист], cellx(inset: (left: 2pt), align: center + horizon)[№ докум.], cellx(inset: (left: 2pt), align: center + horizon)[Подп.], cellx(inset: 3pt, align: start + horizon)[Дата]
      )
    ]
  ]
}
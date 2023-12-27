#let titlepage(
  title: "",
  authors: (),
  teachers: (),
  date: datetime.today(),
  education: "Название организации",
  department: "Факультет",
  position: "преподаватель",
  documentName: "ОТЧЁТ ПО ЛАБОРАТОРНЫм РАБОТАМ",
  group: "ГРУППА",
  city: "ГОРОД",
  isPractice: false // TODO если практика, то добавить дополнительное поле для оценки
  ) = {
  align(center, education)
  align(center, department)
  
  align(left, stack(dir: ltr, "ОТЧЁТ 
ЗАЩИЩЁН С ОЦЕНКОЙ", align(bottom, line(length: 80pt, start: (5pt, 0pt)))) ) // тут start = отступ
  v(5pt)
  align(left, "РУКОВОДИТЕЛИ")
  grid(columns: (2fr, 1fr, 2fr), gutter: 10pt, 
  position, "", align(center, teachers.join(", ")), 
  line(length: 100%), line(length: 100%), line(length: 100%), 
  align(center, text(0.75em, "должность, уч.степень, звание")), align(center, text(0.75em, "подпись, дата")), align(center, text(0.75em, "инициалы, фамилия")),)
  
  
  v(3fr)
  align(center, upper(documentName))
  align(center, stack(dir: ttb, title, v(5pt), align(bottom,  line(length: 0%))))
  v(3fr)
  grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 10pt, 
  "ОТЧЁТ", "", "", "",
  "ВЫПОЛНИЛ", "", "", "",
  "СТУДЕНТ ГР №", align(center, group), "", align(center, authors.join(", ")), 
  "", line(length: 100%), line(length: 100%), line(length: 100%), 
  "", align(center, text(0.75em, "должность, уч.степень, звание")), align(center, text(0.75em, "подпись, дата")), align(center, text(0.75em, "инициалы, фамилия")),)
  v(3fr)
  align(center, stack(dir: ltr, city, h(10pt), str(date.year())))
}
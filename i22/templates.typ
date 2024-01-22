
#let project(title: "", body) = {
  set document(date: datetime.today(), author: "Mehdi Ben Ahmed")  
  set page(numbering: "1/1")
  
  set align(bottom)
  
  align(left, image("./static/priest.jpeg", height: 20pt))
  text(title,size: 3em)
  text("\nWololo, écrit le ")
  text(datetime.today().display())
  pagebreak()

  outline(depth: 3, indent: true)
  pagebreak()

  body
}


#let exercices(body)={
  set text(font: "Hack Nerd Font Mono")
  body
}

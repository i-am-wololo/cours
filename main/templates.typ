#let project(title: "", body) = {
  set document(date: datetime.today(), author: "Mehdi Ben Ahmed")  
  set list(indent:3pt)
  set text(font: "FiraCode Nerd Font Mono")

  text(title,size: 3em)
  text("\nMehdi Ben Ahmed, écrit le ")
  text(datetime.today().display())
  pagebreak()

  outline(depth: 3, indent: true)
  body
}


#let title(body) = {
  set align(center)
  text(body, style:  "oblique")
}

#let exercices(body)={
  show heading: set text(green)
  set text(font: "Hack Nerd Font Mono")

  body
}

#let placeholder()={
  
  text(style: "italic", "Placeholder (Comming Soon)")
}

#let defcount = counter("definition")
#let definition(txt, title: "") = block[ 
  #set rect(radius:8pt)
  #rect[#defcount.step()
    *Définition #context defcount.display(): #title* #txt
  ]
]

#let chshtemplate(matiere: "", body) = {
  set text(font: "FiraCode Nerd Font Mono Ret",
           size: 8pt
          )
  title("fiche de "+matiere+" de Mehdi Ben Ahmed")
  columns(2, body)
}



#let truthtable(body, sign) = {
  table(columns:(auto, auto, auto), ..body)
}

#let py(body) = {
  raw(lang:"py", body)

}


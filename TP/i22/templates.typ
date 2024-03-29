#let project(title: "", body) = {
  set document(date: datetime.today(), author: "Mehdi Ben Ahmed")  
  set page(numbering: "1/1",
   header: [
     #smallcaps(title )
     #smallcaps(text(datetime.today().display()))
     #h(1fr) Ecrit par Mehdi
     #line(length: 100%)
     ]
  )
  set list(indent:3pt)
  set text(font: "RobotoMono Nerd Font")



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

#let truthtable(Ninput, Noutput, body) = {
  let inputsn = range(Ninput)
  let outputs = range(Noutput)
  table(columns: Ninput+Noutput,
  inputsn.map(x=> [E#x]),
  outputsn.map(x=>[S#x]),
  body

      
)
}

#let placeholder()={
  
  text(style: "italic", "Placeholder (Comming Soon)")
}

#let defcount = counter("definition")
#let definition(txt, title: "") = block[ 
  #set rect(radius:8pt)
  #rect[#defcount.step()
    *Définition #defcount.display(): #title* #txt
  ]
]

#let chshtemplate(matiere: "", body) = {
  set text(font: "Hack Nerd Font",
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


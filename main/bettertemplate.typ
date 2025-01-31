#let project(title: "", body) = {
	set document(date: datetime.today(), author: "Mehdi Ben Ahmed")
	set page(numbering: "1/1",
		header: [
		#set align(center)
		#smallcaps(title)
		#smallcaps(text(datetime.today().display()))
		#line(length:80%, stroke: (dash: "dashed"))
		]
	)
	set heading(numbering:"I.1")
	set text(font:"FiraCode Nerd Font")
	body

}

#let defcount = counter("definition")
#let definition(txt, title: "") = block[ 
  #set rect(radius:2pt)
  #rect[#defcount.step()
	
    *Définition #context defcount.display(): #title* #txt
  ]
]

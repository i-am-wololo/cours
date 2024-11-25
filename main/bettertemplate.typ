#let project(title: "", body) = {
	set document(date: datetime.today(), author: "Mehdi Ben Ahmed")
	set page(numbering: "1/1",
		header: [
		#set align(center)
		#smallcaps(title)
		#smallcaps(text(datetime.today().display()))
		#line(length:80%)
		]
	)
	set heading(numbering:"I.1")
	set text(font:"FiraCode Nerd Font")
	body

}

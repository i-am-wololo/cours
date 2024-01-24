#import "./templates.typ": *
#show: chshtemplate.with(matiere: "i21")



= Conception d'algorithme
#definition(title:"Invalider un algo")[Pour montrer qu'un algo n'est pas valide, il suffit de montrer un contre exemple, soit un cas ou l'algorithme ne marcherait pas]


= Analyse asymptotique
#definition(title:"Analyser un algorithme")[c'est analyser les couts par rapport au temps d'execution, l'espace memoire, et la consommation electrique]
#definition(title: "le modele random access machine")[
  machine hypothetique ou:
  - les operands consomment une unite de temps
  - les boucles depend du nombre d'iterations et des operation inside
  - un read consomme une unite de temps
  - la memoire est illimite
  ]
l'efficacite d'un algo est defini par une fonction notee C(n) ou T(n), meme si dans un cas reel ca serait plutot note O(n)

exemple:
- recherche d'un element:
  - n cases a tester
  - 5 cases: > 5 tests
  - 10 cases: > 10 tests
- ramasssage de plots:
  - n! chemins a tester
  - 5 plots: 120 chemins possible

la notation est qui suit:
- $Omega(n)$: meilleur cas
- $O(n)$: pire cas
- $Theta(n)$: cas moyen


= Bases d'algo


= Algos de tri

= Algos de recherche

= piles et files

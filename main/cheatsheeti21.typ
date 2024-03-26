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

#definition(title:$f(n)=O(g(n))$)[il existe une constance $c$ et un entier $n_0$ tels que $forall n >= n_0, f(n) =< c g(n)$]
exemples:
- $3n^2 - n + 6 = O(n^2)$ en prenant $c = 3$ et $n_0 = 6$
- $3n^2 - n + 6 = O(n^3)$ en prenant $c = 1$ et $n_0=4$
- $3n^2 - n + 6 != O(n)$ car $forall c, c n < 3n^2 - n+6$ quand $n > c +1$

#definition(title:$f(n)=Omega(g(n))$)[il existe une constance $c$ et un entier $n_0$ tels que $forall n >= n_0, f(n) => c g(n)$]
exemples:
- $3n^2 - n + 6 = Omega(n^2)$ en prenant $c = 2$ et $n_0 = 2$
- $3n^2 - n + 6 != Omega(n^3) forall c, 3n^2 -n+6 < c n^3$ quand $c n>3$ et $n>6$
- $3n^2 - n + 6 = Omega(n)$ en prenant $c = 1$ et $n_0 = 1$

#definition(title:$f(n)=Theta(g(n))$)[il existe une constance $c$ et un entier $n_0$ tels que $forall n >= n_0 c_1 g(n) <= f(n)<= c_2 g(n)$ \ ($f(n)- O((g(n)$ et $f(n) = Omega(g((n)))$)]
- $3n^2 - n + 6 = Theta(n^2)$ 
- $3n^2 - n + 6 = Theta(n^3)$
- $3n^2 - n + 6 = Theta(n)$




= Bases d'algo

= parcours de tableau

= Algos de recherche

#include "./i21/tri.typ"

#include "./i21/recherche.typ"

#include "./i21/pilesfiles.typ"

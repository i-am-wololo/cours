#import "../templates.typ": *

= Ensembles
#definition(title:"ensemble")[
  Un ensemble est une collection X d'objets _definis_ et _unique_. un objet appartenant a l'ensemble est dit membre de _X_ et on dit que l'objet et membre.
  un membre est unique dans un ensemble, il ne peut pas y avoir deux fois le meme element
]
exemple:
$ {a, b, c, a} = {a, b, c} $
sur python, un type ensemble existe qui est appele ```python set```

= Predicats
#definition(title:"Predicat")[enonce contenant des variables tel qu'en substituant chaque variables par une valeure choisi, on obtient une proposition]
exemple: $x|P(x)$ (se lit x tel que P(x)) est un predicat dans lesquelles la proposition P(x) est vraie pour x
la theorie de ZF distingue deux tyupes de predicats:
- 1. predicat collectivisant: un predicat $P(X)$ tel que les valeurs de x pour lesquelles la proposition P(x) est vrai constituent un enssemble note $(x|P(x))$
- 2. predicat non collectivisant: un predicat P(x) tel que les valeurss x pour lesquelles la prop P(X) est vraie ne constituent pas un ensemble

considerant le predicat $P(x, y)$ defini sur deux variables reelles x et y suivant: 
$ x^2-y=1 $
on peut definir le predicat $Q(x)$ de la variable suivante:
$ exists y in RR x^2-y=1 $
= Quantificateurs
#definition(title: "quantificateur")[ Il existe 3 quantificateurs:
- $forall$ qui se lit "pour tout" (appele forall en latex et typst
- $exists$ qui se lit "il existe"
- $exists!$ qui est un "il existe" unique
]
le quantificateur $exists!$ est lui meme une proposition qui est:
$ (exists x in X P(X))  and  (forall x in X forall y in X P(x) and P(y) => x = y$
le terme de gauche codel'existence et le terme droit l'unicite en exprimant sous forme contraposee que deux elements distincts $x$ et $y$ de l'ensemble $X$ ne peuvent simultanement satisfaire le predicat $P(x): x != => not(P(x) and P(y))$.
= Axiomes
#definition(title:"axiome")[Soit X et Y deux ensembles. on dit que X est inclus dans Y ou que X est une partie de Y ou encore que X est un sousensemble de Y, ce que l'ont note $X subset.eq Y$ ou $Y supset.eq X$ seulement si 
$ forall x x in X => x in Y$
]

// #lorem(500)
// = Arbres de derivation

/*
*  (regles de proposition)
*  arbre de derivation
*  loi de De Morgan
*  commutation
*/


= TP


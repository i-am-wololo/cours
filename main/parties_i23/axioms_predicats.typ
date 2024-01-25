#import "../templates.typ": *

= Predicats
#definition(title:"Predicat")[enonce contenant des variables tel qu'en substituant chaque variables par une valeure choisi, on obtient une proposition]
exemple: $x|P(x)$ (se lit x tel que P(x)) est un predicat dans lesquelles la proposition P(x) est vraie pour x
la theorie de ZF distringue deux tyupes de predicats:
- 1. predicat collectivisant: un predicat $P(X)$ tel que les valeurs de x pour lesquelles la proposition P(x) est vrai constituen un enssesmbnble note $(x|P(x))$
- 2. predicat non collectivisant: un predicat P(x) tel que les valeursss x pour lesquelles la prop P(X) est vraie ne constituent pas un ensemble

considerant le predicat $P(x, y)$ defini sur deux variables reelles x et y suivant: 
$ x^2-y=1 $
on peut definir le predicat $Q(x)$ de la variable suivante:
$ exists y in RR x^2-y=1 $
= Quantificateurs

= Axiomes
#definition(title:"axiome")[Soit X et Y deux ensembles. on dit que X est inclus dans Y ou que X est une partie de Y ou encore que X est un sousensemble de Y, ce que l'ont note $X subset.eq Y$ ou $Y supset.eq X$ seulement si 
$ forall x x in X => x in Y$
]

// #lorem(500)
// = Arbresss de derivation

/*
*  (regles de proposition)
*  arbre de derivation
*  loi de De Morgan
*  commutation
*/


= TP


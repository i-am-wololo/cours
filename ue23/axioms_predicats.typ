#import "../templates.typ": *
= Axiomes et predicats

== Ensembles

#definition(title:"ensemble")[
  Un ensemble est une collection X d'objets _definis_ et _unique_. un objet appartenant a l'ensemble est dit membre de _X_ et on dit que l'objet et membre.
  un membre est unique dans un ensemble, il ne peut pas y avoir deux fois le meme element
]

exemple:
$ {a, b, c, a} = {a, b, c} $
sur python, un type ensemble existe qui est appele ```python set```

#definition(title:"Difference")[Soit $X$ et $Y$ deux enembles. la difference entre les ensembles $X$ et $Y$ est l'ensemble ${x in X | x in.not Y}$, qui est l'ensembles qui contients les elements de X mais pas les elements de Y. on note aussi $X\Y$ l'ensemble qui contient seulement les differences d'un ensemble $X inter Y$ est $X Delta Y$]

#definition(title:"Cardinal")[On appelle le cardinal d'un ensemble sa taille. Lorsqu'un ensemble est fini, le cardinal est la longueur de cette ensemble]

== Predicats
#definition(title:"Predicat")[enonce contenant des variables tel qu'en substituant chaque variables par une valeure choisi, on obtient une proposition]

exemple: $x|P(x)$ (se lit x tel que P(x)) est un predicat dans lesquelles la proposition P(x) est vraie pour x
la theorie de ZF distingue deux tyupes de predicats:
- 1. predicat collectivisant: un predicat $P(X)$ tel que les valeurs de x pour lesquelles la proposition P(x) est vrai constituent un enssemble note $(x|P(x))$
- 2. predicat non collectivisant: un predicat P(x) tel que les valeurss x pour lesquelles la prop P(X) est vraie ne constituent pas un ensemble


considerant le predicat $P(x, y)$ defini sur deux variables reelles x et y suivant:
$ x^2-y=1 $
on peut definir le predicat $Q(x)$ de la variable suivante:
$ exists y in RR x^2-y=1 $

== Quantificateurs
#definition(title: "quantificateur")[ Il existe 3 quantificateurs:
- $forall$ qui se lit "pour tout" (appele forall en latex et typst
- $exists$ qui se lit "il existe"
- $exists!$ qui est un "il existe" unique
]
le quantificateur $exists!$ est lui meme une proposition qui est:
$ (exists x in X P(X))  and  (forall x in X forall y in X P(x) and P(y) => x = y$
le terme de gauche codel'existence et le terme droit l'unicite en exprimant sous forme contraposee que deux elements distincts $x$ et $y$ de l'ensemble $X$ ne peuvent simultanement satisfaire le predicat $P(x): x != => not(P(x) and P(y))$.
== Axiomes

#definition(title:"axiome de l'inclusion")[Soit X et Y deux ensembles. on dit que X est inclus dans Y ou que X est une partie de Y ou encore que X est un sousensemble de Y, ce que l'ont note $X subset.eq Y$ ou $Y supset.eq X$ seulement si
$ forall x x in X => x in Y$
]

#definition(title:"axiome d'extension")[

	Soit X et Y deux ensembles, alors $X=Y$ si et seulement si $ (X subset.eq Y) and (Y subset.eq X) $
]

#definition(title:"axiome de la paire")[
	soit $a, b$ deux objet. le predicat $(x=a) or (x=b)$ est collectivisant en x. l'ensemble definit est ${a, b}$

	$ {x | (x=a) or (x = b)} $
]


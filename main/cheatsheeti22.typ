#import "./templates.typ": *
#show: chshtemplate.with(matiere: "i22")


= bases et codage

== rappels
#table(columns: (auto, auto, auto, auto),
      "decimale", "binaire", "octal", "hexa",
      "0", "0", "0", "0",
      "1", "1", "1", "1",
      "2", "10",  "2", "2",
      "3", "11",  "3", "3",
      "4", "100", "4", "4",
      "5", "101", "5", "5",
      "6", "110", "6", "6",
      "7", "111", "7", "7",
      "8", "1000", "10", "8",
      "9", "1001", "11", "9",
      "10", "1010", "12", "A",
      "11", "1011", "13", "B",
      "12", "1100", "14", "C",
      "13", "1101", "15", "D",
      "14", "1110", "16", "E",
      "15", "1111", "17", "F"
) 

== rappels logique
#table(
  columns: (auto, auto, auto, auto, auto),
  $x$, $y$, $x+y$, $x y$, $tilde(x)$,
  $0$, $0$, $0$, $0$, $1$,
  $0$, $1$, $1$, $0$, $1$,
  $1$, $0$, $1$, $0$, $0$,
  $1$, $1$, $1$, $1$, $0$
)

== Arithmetique tronque a gauche:


= logique combinatoire
#definition(title:"tableau de Karnaugh")[
il sert a representer l'ensemble des arguments d'une fonction booleenne, a la meme facon qu'un tableau de valeur.
cette forme est efficace pour trouver:
- la FND d'une fonction
- trouver l fonction booleenne ayant le moins de variable et d'operateurs possible: simplification des fonctions booleennes
un tableau de karnaugh a pour argument n, qui signifie n nombre d'arguments d'une fonction booleenne
]
exemple pour un tableau $n=3$:
#table(
  columns:(auto, auto, auto, auto, auto),
  [
    #align(right+top, "xy")
    #align(left+bottom, [z] )
  ], "00", "01", "11", "10",
  "0", [$f(0,0,0)$], $f(0,1,0)$, $f(1,1,0)$, $f(1,0,0)$,
  $1$, $f(0,0,1)$, $f(0,1,1)$, $f(1,1,1)$, $f(1,0,1)$
)

#definition(title:"forme nominal disjonctive (FND)")[
  let $n$ variabless, $x_1...x_n$, on appelle monome d'ordre n le produit $y_1,y_2...y_n$ avec $y_i = x_i$ ou $y_i = tilde(x_i)$ pour chaque $i in {1,...,n}$.
  une fonction est dite sous forme nominal disjonctive si la fonction est une somme de monomes d'ordre n. toute fonctions non nulle de $n$ variables peut s'ecrire de facon unique sous forme nominale disjonctive.
]
exemple: soit une fonction $f$ boolenne de 2 arguments dont son tableau de karnaugh est
#table(
  columns: (auto, auto, auto, auto, auto),
  [
    #align(top+right, $x y$)
    #align(bottom+left, $z$)
  ], $00$, $01$, $11$, $10$,
  $0$, $1$, $0$, $1$, $1$,
  $1$, $0$, $1$, $0$, $0$,
)
La FND de $f$ est $f(x,y,z) = tilde(x) tilde(y) tilde(z)+ x y tilde(z) + x tilde(y) tilde(z) + tilde(x)+ y z$
on peut donc simplifier la fonction a 
$ x y+x tilde(y) = x $
en effet $x y + x tilde(y) = x(y+tilde(y)) = x 1 = x$



= logique sequentielle

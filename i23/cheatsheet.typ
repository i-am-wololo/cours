#import "./templates.typ": *

#show: chshtemplate.with(matiere: "i23")

// = Connecteurs logique:
// #table(
//   coluk
= Definitions et props
#definition(title:"Commutatif")[les variables peuvent etre inverses]
#definition(title:"L'arbre de Derivation")[C'est un format de pour representer une proposition]
#figure(
  image("./ArbreDerivation.png", width:60%),
  caption: text(size:8pt, $(P => Q) and (P or not R) $)
) 
#definition(title:"Loi de De Morgan")[Soit $P$ et $Q$ deux assertions, alors  \
$not (P or Q) eq.triple not P and not Q \
 not (P and Q) eq.triple not P or not Q
$
]


= Tables de verite
il est assume qu'un connecteur est commutatif sauf mentione autrement
== table de $and$: q binaire
#truthtable(($bot$, $bot$, $bot$,
             $top$, $bot$, $bot$,
             $bot$, $top$, $bot$,
             $top$, $top$, $top$
            ), $and$
)

== table de $or$: q binaire
#truthtable(($bot$, $bot$, $bot$,
             $bot$, $top$, $top$,
             $top$, $bot$, $top$,
             $top$, $top$, $top$
            ),
$or$)

== table de $xor$: q binaire
#truthtable(($bot$, $bot$, $bot$,
             $bot$, $top$, $top$,
             $top$, $bot$, $top$,
             $top$, $top$, $bot$
)
,$xor$)

== table de $=>$: q binaire dit non commutatif
#truthtable(($bot$, $bot$, $top$,
             $bot$, $top$, $top$,
             $top$, $bot$, $bot$,
             $top$, $top$, $top$),

$=>$)
autrement dit, vrai sauf si p est vrai et q est faux

== table de $<=>$: q binaire
#truthtable(($bot$, $bot$, $top$,
             $bot$, $top$, $bot$,
             $top$, $bot$, $bot$,
             $top$, $top$, $top$,

  ),$<=>$) vrai si les deux variables ont la meme valeur

Voir fichiers python pour les informations concernant les TPs
= Predicats
#definition(title:"Predicat")[enonce contenant des variables tel qu'en substituant chaque variables par une valeure choisi, on obtient une proposition]
exemple: $x|P(x)$ (se lit x tel que P(x)) est un predicat dans lesquelles la proposition P(x) est vraie pour x

= Quantificateurs
#lorem(50)

= Axiomes
#lorem(60)

// #lorem(500)
]
// = Arbresss de derivation

/*
*  (regles de proposition)
*  arbre de derivation
*  loi de De Morgan
*  commutation
*/

#import "../templates.typ": *

#title("logique de boole")

= Algebre de boole
soit $BB$ un enssemble munit d'une structure algebrique, on l'appelle algebre de boole.
#definition(title:"")[on appelle booleen toute variable defini sur un ensemble a deux elements]

Pour simplifier l'ecriture des expressions logique, l'operande $not$ peut etre ecrit de cette facon: $macron(x)$. et on a

#table(columns: (auto, auto, auto),
      $x$, $0$, $1$,
      $macron(x)$, $1$, $0$
)

dans le cadre de l'algebre de Boole, un litterale designe la aussi une variable $x$ (litteral positif) ou sa negation $macron(x)$ (litteral negatif)

== Proprietes de calcul

on dispose des nombreuses  proprietess suivantes heritees du calcul propositionnel:

#text[#set enum(numbering:"1.")
+ associativite: $(a+b)+C = a+(b+c) = a+b+c$
+ commutativite $a+ b = b+a$
+ distributivite $a(b+c) = a b+(a c)$
+ idempotence: $a+a+a+a...=a$ et $a a a.... = a$
+ element neutre: $a+0=0+a=a$ et $a 1=1 a =a$
+ absorption $0 a = a$ et $1 + a = 1$
+ simplifcication: $a + macron(a) b = a+b$ et $a (macron(a) + b)= a b$
+ redondance: $a b +macron(a) c = a b + macron(a) c + b c$ et $(a+b)(macron(a)+c)=(a+b)(tilde(a)+c)(b+c)$
+ DeMorgan: $macron(a b) = macron(a) + macron(b)$
+ Involution: $macron(macron(a))= a$
+ tiers exclu: $macron(a) + a =1$
+ non contradiction: $a macron(a) = 0$
]

on retrouve les cinq autres operateur binaire, implication, equifvvalence, disjonction exclusive, non conjenction et non disjonction:
$ a => b = tilde(a) +b, \
 a <=> b = (tilde(a) + b) (a+ tilde(b)) \
 a xor b = ( a+b)(tilde(a)+tilde(b)) \
 a arrow.t b = tilde(a b) \
 a arrow.b b = tilde(a + b) \
 $
 
 qui ont les tables de verite:
 #table( columns: ( auto, auto, auto),
 $=>$, $0$, $1$,
 $0$, $1$, $1$,
 $1$, $0$, $1$
 )
#table( columns: ( auto, auto, auto),
$<=>$, $0$, $1$,
$0$, $1$, $0$,
$1$, $0$, $1$
 )
#table( columns: ( auto, auto, auto),
$xor$, $0$, $1$,
$0$, $0$, $1$,
$1$, $1$, $0$
 )
#table( columns: ( auto, auto, auto),
  $arrow.t$, $0$, $1$,
  $0$, $1$, $1$,
  $1$, $1$, $0$
 )
#table( columns: ( auto, auto, auto),
$arrow.b$, $0$, $1$,
$0$, $1$, $0$,
$1$, $0$, $0$
 )

= Definitions:
#definition(title:"antilogie")[L'antilogie est le cas ou une formule repond toujours faux, a l'inverse de la tautologie qui répond toujours vrai]
= Code Gray
#definition(title:"Code Gray")[]

= Minterme, maxterme
#definition(title:"Minterme, Maxterme")[on appelle Minterme toute fonction d'ordre n, prenant une seule fois la valeur 1]


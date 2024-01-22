#import "../templates.typ": *
= Logique Propositionnelle

#let faux(body) = text(red, body)
== Intro


== Calcul propositionel
De manière analogue, un énoncé mathématique/programme informatique doit respecter:
- Des règles *lexicales* $=>$ les symboles utilisé
- Des règles *syntaxiques*, $=>$ la grammaire, structure de la proposition
- Des règles *sémantiques*, toute énoncé doit être interprété 

Exemples:
- il pleut
- #faux[Pourquoi le poulet a-t-il traversé la route ?] _c'est une interrogation_
- $1+1=2$    
-  Si les poules avaient des dents, alors j'irais sur la lune _bien que ça a l'air faux, c'est une proposition correcte_
- #faux[$0(4 = -1$], ici la syntaxe est fausse
- #faux[$1+sqrt(x)>4$], ici x n'est pas définit, on ne peut donc pas évaluer la proposition

#definition[Une proposition est un énoncé qui peut être évalué et attribué une valeur booléenne, soit vrai soit faux]

=== Syntaxe

comme tout langage, les expressions logique repose sur une syntaxe et un lexique.
Ce lexique est composé de ces élements:
- les constantes #sym.top et #sym.bot
- les variables propositionnelles, souvent assignés par des lettres latin. Elles sont fini et ont pour valeur soit #sym.top ou #sym.bot
- les parentheses
- les connecteurs logique, $not, and, or, =>, <=>, xor$

#definition[l'arité est le nombre q de propositions qu'un connecteur peut connecter, exemple si q=1, on parle de conecteur unaire]

#pagebreak()
la table de verite d'un connecteur est la sortie qu'il renvoie, par exemple, voici la table de verite pour un composant #sym.xor binaire

#table(columns: (auto, auto), 
  "entree", sym.xor,
  [#sym.top #sym.top], sym.bot, 
  [#sym.bot #sym.bot], sym.bot,
  [#sym.bot #sym.top], sym.top, 
  [#sym.top #sym.bot], sym.top, 
)



== Formalisation raisonnement


== Exercices
#exercices[

#placeholder() 

  ]

#pagebreak()

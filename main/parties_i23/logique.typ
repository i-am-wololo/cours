#import "../templates.typ": *

= Definitions et props
#definition(title:"Commutatif")[les variables peuvent etre inverses]
#definition(title:"L'arbre de Derivation")[C'est un format de pour representer une proposition]
#figure(
  image("../ArbreDerivation.png", width:60%),
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

== Proprietes
- comutativite de $and$ et $or$
$ (p and q) eq.triple (q and p) $
$ (p or q) eq.triple (q or p) $
- associativite de $and$ et $or$
$ ((P and Q) and R) eq.triple ((q and R) and P)$
$((P or Q) or R) eq.triple ((Q or R) or P) $
- idempotence de $and$ et $or$
$ (p and p) eq.triple p$ \
$ (p or p) eq.triple p$

== Modus{ponens, tollens}

#definition(title:"modus ponen")[Soit $P$ et $Q$ deux propositions, si $P$ est vrai et $P => Q$ est vrai, alors  Q est vrai.
$ P, P => Q tack.l Q $]

car $P => q eq.triple not Q => not P$

#definition(title:"modus ponen")[Soit $P$ et $Q$ deux propositions, si $not Q$ est vrai et $P => Q$ est vrai, alors la proposition $not P$ est vrai.
$ not Q, P => Q tack.l not P $
]



= TPs

== Question 1: Ecrire une fonction #py("interpretations(nbVar)") qui renvoie le tuple constitue de toutes les interpretations possible de nbvar variables propositionnelles

la technique que j'ai opte est de calculer tous les nombre possible en binaire jusqu'a $2^"nbvar"$, puis de les retranscrire en tuple de vrai/faux. Voici le code (on assume une fonction translate to tuple defini comme le suit)
#py("
# Q1: ecrire une fonction Inter(nbvar) qui renvoie le tuple constitue de toutes les interpretations possible de nbvar variables propositionnelles
def translatetotuple(binary: str):
    result = []
    for i in binary:
        if i == '1':
            result.append(True)
        else:
            result.append(False)

    return tuple(result)

def inter(nbvar):
    finalresult = ()
    for i in range(nbvar**2):
        result = bin(i)
        result = result[2:]
        while len(result)<nbvar:
            result = '0'+result 
        result = translatetotuple(result)
        finalresult += result,
    return finalresult
")

== Question 2.
Une formule propositionelle FP de n variables est codee par une chiande de caracteres respectant la syntaxe python. 
les variables étant toujours codées V[0], V[1],… ,V[n-1]. Écrivez une fonction TV(FP,n) qui renvoie la table de vérité de la formule FP sous forme de tuple de tuples à l'aide de la fonction Inter et la fonction d'évaluation eval(chaine) du Python qui évalue une chaine de caractères si elle respecte la syntaxe du langage Python.

Exemple. Avec la chaîne de caractère FP = "V[0] and V[1]", l'appel de la fonction TV(FP,2) doit renvoyer le tuple
#py("((False,False,False),(False,True,False),(True,False,False),(True,True,True))")

le code est incomplet, mais le concept est juste. on genere les combinaison, puis on laisse exec evaluer l'expression, enfin on append dans la variable resultat final et on renvoie (le code n'est pas au point mais le concept est celui la)
#py("
def TV(fp, nbvar):
   variables = inter(nbvar)
   endresult = ()
   for V in variables:
       endresult += (i, (exec(fp)),)")

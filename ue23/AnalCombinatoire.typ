#import "../templates.typ": *
#title("analyse combinatoire")
==  Ensembles naturel
#definition(title:"Ensemble Naturel")[On appelle ensemble naturel $(N, eq.prec)$ tout ensemble ordonne qui satisfait les trois proprietes suivantes:
- Toute partie non vide admet un plus petit element
- Toute partie non vide et majoree admet un plus grand element
- L'ensemble n'admet pas de plus grand element
]
l'existance d'un ensemble naturel est acquise grace a l'axiome de l'infini (consulter wikipedia)
Pour demontrer qu'un ensemble naturel est ordonne, on peut emettre la proposition suivante:
$ exists m in {a,b} (m eq.prec a) and (m eq.prec b) $
deux element $a,b$ dans l'enemble $N$. D'apres l'axiome de la paire, l'ensemble ${a,b}$ existe, n'est pas vide et admet donc un plus petit element (un ensemble naturel est toujours minore mais jamais majore)
Comme $m in N$ on a $(m=a) and (m=b)$ et on deduit que $(a eq.prec b) or (b eq.prec a)$

Soit $n in NN$ la demi droite $|]n, arrow.r[|$ n'est pas vide, sinon $n$ serait le plus grand element, ce qui va a l'encontre de la 3eme propriete. $|]n, ->[|$ admet un plus petit element appele $s u c c(n)$, le successeur de n


== recurrence
#definition(title:"Theoreme principe de recurrence")[Toute partie de $NN$ qui contient 0 et stable pour l'application successeur est egale a $NN$]

#definition(title:"theoreme recurrence simple")[Soit $P(n)$ un predicat sur $NN$ et $a in NN$. Si les deux propositions sont satisfaites:
- $P(a)$ init
- $ forall n in NN P(n) => P(n+1)$ heredite
alors $forall n in [|a, ->[| P(n)$
]

#definition(title:"theoreme recurrence forte")[Soit $P(n)$ un predicat sur $NN$ et $a in NN$. Si les deux propositions sont satisfaites:
- $P(a)$ init
- $forall n in NN (forall k in [|a,n|] P(k)) => P(n+1)$ heredite forte
alors $forall n in [|a, ->[| P(n)$
]

#definition(title:"theoreme recurrence multiple")[Soit $P(n)$ un predicat sur $NN$ et $a in NN$. Si les deux propositions sont satisfaites:
- $forall i in [|0, k-1|] P(a+i)$ init
- $forall n in NN P(n) => P(n+k)$
alors $forall n in [|a, ->[| P(n)$
]

#definition(title:"theoreme recurrence finie")[Soit $P(n)$ un predicat sur $NN$ et $a in NN$. Si les deux propositions sont satisfaites:
- $P(a)$ init
- $forall n in [|a, m-1|] P(n) => P(n+1)$
alors $forall n in [|a, m|] P(n)$
]

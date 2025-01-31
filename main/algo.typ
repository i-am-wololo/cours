#import "bettertemplate.typ": *;
#show: project.with(title:"Algo");

#definition(title: "algorithme")[procedure qui repond a un probleme en nombre fini d'etapes, par application d'une serie de regles definie];

#definition(title: "Probleme algorithmique")[Probleme ou est definie une entree, puis une sortie]
exemple, Entree: prend un nombre; Sortie: son factorielle

#definition(title:"Instance d'un probleme")[Une instance est un cas specifique d'un probleme]
exemple pour le probleme en haut, Entree: 5, Sortie: 120

On peut decrire un algo de 3 facons:
- par un enonce
- par un programme
- par un pseudo code

g pas les regles du pseudocode


== justesse et terminaison
Pour qu'un algo soit valide, il doit:
- resoudre un probleme pour toute les instances correctement
- se terminer

la terminaison se prouve par recurrence

Preuve par recurrence: 
- on definit P(n)
- on prouve P(0) 
- puis on prouve P(n+1) par hypothese de recurrence



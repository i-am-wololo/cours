#import "templates.typ": *
#show: project.with(title: "TP 3: circuits combinatoire")

ce document est cense documenter toute les etapes de ma procedure, mais il peut aussi etre utilise comme guide

= Inverseur commande
Un composant qui prend 2 entrees, une entree de donnee et une entree pour le parametre, et selon le parametre, renvoie la negation du signal d'entree.
Exemple $C=1; O=not E; C=0 O=E$
la table de verite est sur la feuille jointe avec ce document, et le circuit est qui suit:

#image("./inverseur.png", width: 70%)


= Multiplexeur 2 vers 1
3 entrees, 1 sortie, une entree sert a determiner quel canal pars en sortie


#image("mux.png", width: 70%)

= encodeur 4 vers 2

4 entrees, 2 sortie, simplifie en ignorant les bits insignifiants. Parmi les 4 entrees, une est ignoree.
La formule est $(s 1, s 0) = E 3+E 2, E 2+not E 1* E 0 $

#image("./encoder.png", width: 70%)
Reponse a: "Comment gérer l'ambiguïté dans l'encodage entre la présence d'une valeur sur l'entrée 0 et l'absence de valeur toutes les entrées ?"
on peut ajouter une troisieme sortie $G$, pour savoir si l'encodeur est active, c'est a dire qu'il y a au moins un signal actif dans une des entrees pour que $G = I 0 + I 1+I 2+ I 3$ 

= Decodeur 2 vers 4
2 entrees, 4 sortie. c'est l'inverse de l'encodeur: 

#image("./decoder.png", width:70%)

celui la je n'ai pas su le faire de tete, j'ai du consulter le cours pour l'avoir

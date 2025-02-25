= Algos de recherche

== Recheche Dichotomique
Soit une liste triee, l'algorithme consiste a chercher x dans la moitie de la liste:
- si $T[i] < x$, on prend la partie gauche
- si $T[i] > x$, on prend la partie droite

En code, cela consiste a prendre l'indice du milieu, n/2 pour un tableau de longueur n, puis de comparer la taille. Enfin d'avancer l'indice de 1 si le nombre trouve est petit, et l'inverse si il est trop grand.


La dichotomie est aussi utilise pour la recherche de pic:
```Tant que (b - a) > ε 
    m ← (a + b) / 2
    Si (f(a)*f(m) ≤ 0) alors
       b ← m
    sinon
       a ← m
    Fin Si
Fin Tant que
```
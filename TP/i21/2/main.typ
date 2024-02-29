#import "./templates.typ": *

#show: project.with(title: "TP2 i21")

= Introduction a matplot:
Je vais skip les question, etant donne qu'elles sont extremement facile a realiser avec des listes en comprehension et la connaissance basique de matplot

= Etude de la multiplication:
pour la multiplication, le prof attend qu'on utilise la methode vu en cours pour la multiplication manuelle sous forme de tableau

#py("
def multi(n1, n2):
    summ = 0
    for i in range(len(n2)):
        for j in range(len(n1)):
            summ += (n2[j]*10**i)*(n1[i]*10**j)  
    return sum")

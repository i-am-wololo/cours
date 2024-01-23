# Questions TP present a la fin du cours

# Q1: ecrire une fonction Inter(nbvar) qui renvoie le tuple constitue de toutes les interpretations possible de nbvar variables propositionnelles
def inter(nbvar):
    result = ()
    vrai = "1"*nbvar
    faux = "0"*nbvar

    
    
        


assert inter(2) == ((False,False),(False,True),(True,False),(True,True))

assert inter(4) == (
    (False, False, False, False),
    (False, False, False, True),
    (False, False, True, False),
    (False, False, True, True),
    (False, True, False, False),
    (False, True, False, True),
    (False, True, True, False),
    (False, True, True, True),
    (True, False, False, False),
    (True, False, False, True),
    (True, False, True, False),
    (True, False, True, True),
    (True, True, False, False),
    (True, True, False, True),
    (True, True, True, False),
    (True, True, True, True)
)

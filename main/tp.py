# Questions TP present a la fin du cours

# Q1: ecrire une fonction Inter(nbvar) qui renvoie le tuple constitue de toutes les interpretations possible de nbvar variables propositionnelles
def translatetotuple(binary: str):
    result = []
    for i in binary:
        if i == "1":
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
            # print(result)
            result = "0"+result 
        result = translatetotuple(result)
        finalresult += result,
        # print(reslt)
    return finalresult
    
        

print(inter(4))
assert inter(2) == ((False,False),(False,True),(True,False),(True,True))

# assert inter(4) == (
#     (False, False, False, False),
#     (False, False, False, True),
#     (False, False, True, False),
#     (False, False, True, True),
#     (False, True, False, False),
#     (False, True, False, True),
#     (False, True, True, False),
#     (False, True, True, True),
#     (True, False, False, False),
#     (True, False, False, True),
#     (True, False, True, False),
#     (True, False, True, True),
#     (True, True, False, False),
#     (True, True, False, True),
#     (True, True, True, False),
#     (True, True, True, True)
# )

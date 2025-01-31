def aux(liste):
    la = []
    for i in liste:
        print(liste)
        la.append(i+(False,))
        la.append(i+(True,))
    return la



def interpretation(n: int):
    result = [()]
    for i in range(n):
        result = aux(result)
        print(result)
    return result

print(interpretation(2))

def TV(FP: str, n: int):
    table = interpretation(n)
    result = []
    for i in range(len(table)):
        V = table[i]
        V += (eval(FP),)
        result.append(V)
    return result


def satisfaisable(FP, n):
    table = interpretation(n)
    out = TV(FP, n)
    result = []
    for i in range(len(out)):
        if out[i][-1] is True:
            result.append(table[i])
    return result

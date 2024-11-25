def aux(liste):
    la = []
    for i in liste:
        la.append(i+(False,))
        la.append(i+(True,))
    return la


def interpretation(n: int):
    result = [(False,), (True,)]
    for i in range(n-1):
        result = aux(result)
    return result


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

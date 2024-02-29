def intervalle(a,b,i):
    return [i for i in range(a,b,i)]

def multi(n1, n2):
    summ = 0
    for i in range(len(n2)):
        for j in range(len(n1)):
            summ += (n2[j]*10**i)*(n1[i]*10**j) # les additions des restes est fait automatiquement, pas besoin de le mettre separement
    return summ

print(multi([3,2,1],[6,5,4]))

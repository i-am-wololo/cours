#
# FIchier à compléter: parcours.py
#
# Chaque fonction retourne la liste des paires d'indices correspondant
# au parcours nommé.
#

def parcours_ligne(n):
    """Retourne la liste des indices (colonne,ligne) (!!attention ici
    ligne et colonne sont inversées!!)  des cases correspondant à un
    parcours tableau de taille n x n en ligne.

    Ex: pour T = [ [1,2,3],
                   [4,5,6],
                   [7,8,9] ]
    le parcours correspond aux cases 1,2,3,4,5,6,7,8,9 et la 
    fonction retournera la liste d'indices [(0,0),(1,0),(2,0),(0,1) ...]

    """
    i = 0
    result = [] 
    while i<n:
        j=0
        while j<n:
            result.append((j,i))
            j+=1
        i+=1
    print(result, n)
    return result

    
def parcours_colonne(n):
    """Retourne la liste des indices (colonne,ligne) (!!attention ici
    ligne et colonne sont inversées!!)  des cases correspondant à un
    parcours de tableau de taille n x n en colonne.

    Ex: pour T = [ [1,2,3],
                   [4,5,6],
                   [7,8,9] ]
    le parcours correspond aux cases 1,4,7,2,5,8,3,6,9 et la 
    fonction retournera la liste d'indices [(0,0),(0,1),(0,2),(1,0) ...]

    """
    i = 0
    result = [] 
    while i<n:
        j=0
        while j<n:
            result.append((i, j))
            j+=1
        i+=1
    return result

def parcours_diagonal(n):
    """Retourne la liste des indices (colonne,ligne) (!!attention ici
    ligne et colonne sont inversées!!)  des cases correspondant à un
    parcours de tableau de taille n x n en diagonale.

    Ex: pour T = [ [1,2,3],
                   [4,5,6],
                   [7,8,9] ]
    le parcours correspond aux cases 3,2,6,1,5,9,4,8,7 et la 
    fonction retournera la liste d'indices [(2,0),(1,0),(2,1),(0,0) ...]

    """

    i=n
    result = [] 
    while 0>=i:
        j=i
        y=0
        while 0<=j<=n:
            print("loop")
            result.append((j,y))
            y+=1
            j+=1
        i-=1
        print(i)
    # print(result)
    return result
    
def parcours_antidiagonal(n):
    """Retourne la liste des indices (colonne,ligne) (!!attention ici
    ligne et colonne sont inversées!!)  des cases correspondant à un
    parcours de tableau de taille n x n en anti-diagonale.

    Ex: pour T = [ [1,2,3],
                   [4,5,6],
                   [7,8,9] ]
    le parcours correspond aux cases 9,6,8,3,5,7,2,4,1 et la 
    fonction retournera la liste d'indices [(2,2),(2,1),(1,2),(2,0) ...]

    """
    return []
    
def parcours_serpentin(n):
    """Retourne la liste des indices (colonne,ligne) (!!attention ici
    ligne et colonne sont inversées!!)  des cases correspondant à un
    parcours de tableau de taille n x n en serpentin.

    Ex: pour T = [ [1,2,3],
                   [4,5,6],
                   [7,8,9] ]
    le parcours correspond aux cases 1,2,3,6,9,8,7,4,5 et la 
    fonction retournera la liste d'indices [(0,0),(1,0),(2,0),(2,1) ...]

    """
    result = []
    i = 0
    j = 0
    inc = 0
    mini = 0
    while inc<n**2:
     while i<n-1:
         print(i,j)
         result.append((i,j))
         inc+=1
         i+=1
     print('premiere')
     while j<n-1: 
         result.append((i,j))
         print(i,j)
         inc+=1
         j+=1
     print('2ieme')
     while i>mini:
         result.append((i,j))
         print(i,j)
         inc+=1
         i-=1
     print('3em')
     mini+=1
     while j>mini:
         result.append((i,j))
         print(i,j)
         j-=1
         inc+=1

     print('fin')
     n-=1
    return result
        

def parcours_sinusoidal(n): 
    result = []
    i = 0
    j = 0
    direct = 1
    while j<=n:
        while 0<=i<n and 0<=j<n:
            result.append((j,i))
            i+=direct
        direct = -direct
        i+=direct
        j+=1
    print(result)
    return result


def parcours_zigzag(n):
    result = []
    i = 0
    j = 0
    direct = 1
    while j<=n:
        while 0<=i<n and 0<=j<n:
            result.append((i,j))
            i+=direct
        direct = -direct
        i+=direct
        j+=1
    return result

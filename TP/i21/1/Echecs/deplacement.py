#
# Fichier à compléter: deplacement.py
#
# Chaque fonction doit renvoyer la liste des indices (col,lig) des
# cases sur lesquelles la pièce en question peut aller.
#

def cases_fou(x, y):
    """Retourne la liste des indices (col,lig) des cases où peut se
    déplacer un fou positionné sur la case (col, lig)

    Ex: fou en (2,3) 
    - - - - - - - - - -
    |           x     |
    | x       x       |
    |   x   x         |
    |     F           |
    |   x   x         |
    | x       x       |
    |           x     |
    |             x   |
    - - - - - - - - - -

    """
    moves = []
    directions = [(1,  1), (1, -1), (-1,  1), (-1, -1)]
    
    for dx, dy in directions:
        i, j = x + dx, y + dy
        while  0 <= i <  8 and  0 <= j <  8:
            moves.append((i, j))
            i += dx
            j += dy
    
    return moves


def cases_tour(x, y):
    """Retourne la liste des indices (col,lig) des cases où peut se
    déplacer une tour positionnée sur la case (col, lig)

    Ex: tour en (5,3)
    - - - - - - - - - -
    |           x     |
    |           x     |
    |           x     |
    | x x x x x T x x |
    |           x     |
    |           x     |
    |           x     |
    |           x     |
    - - - - - - - - - -

    """
    moves = []
    directions = [(0,  1), (1, 0), (-1, 0), (0, -1)]
    
    for dx, dy in directions:
        i, j = x + dx, y + dy
        while  0 <= i <  8 and  0 <= j <  8:
            moves.append((i, j))
            i += dx
            j += dy
    
    return moves

def cases_reine(x, y):
    """Retourne la liste des indices (col,lig) des cases où peut se
    déplacer un fou positionnée sur la case (col, lig)

    Ex: dame en (6,1)
    - - - - - - - - - -
    |           x x x |
    | x x x x x x D x |
    |           x x x |
    |         x   x   |
    |       x     x   |
    |     x       x   |
    |   x         x   |
    | x           x   |
    - - - - - - - - - -

    """
    moves = []
    directions = [(0,  1), (1, 0), (-1, 0), (0, -1), (1,1), (-1,-1), (1,-1), (-1, 1)]
    
    for dx, dy in directions:
        i, j = x + dx, y + dy
        while  0 <= i <  8 and  0 <= j <  8:
            moves.append((i, j))
            i += dx
            j += dy
    
    return moves

def cases_roi(col,lig):
   moves = []
   directions = [(0,  1), (1, 0), (-1, 0), (0, -1), (1,1), (-1,-1), (1,-1), (-1, 1)]
   for x, y in directions:
       if 0<=x+col< 8 and 0<=lig+y<8:
           moves.append((x+col, y+lig))
   
   return moves

def cases_cavalier(lig, col):
    """Retourne la liste des indices (col,lig) des cases où peut se
    déplacer un fou positionné sur la case (col, lig)

    Ex: cavalier en (3,3)
    - - - - - - - - - -
    |                 |
    |     x   x       |
    |   x       x     |
    |       C         |
    |   x       x     |
    |     x   x       |
    |                 |
    |                 |
    - - - - - - - - - -

    """
    moves = []
    directions = [(1,2), (1, -2), (2,1), (2, -1), (-2, 1), (-2, -1), (-1, 2), (-1, -2)]
    for x, y in directions:
        if 0<=x+col< 8 and 0<=lig+y<8:
            moves.append((y+lig, x+col))
    return moves
    
def cases_pion(col,lig):
        if lig == 6:
            return [(col, lig-1), (col, lig-2)]
        return [(col, lig-1)]
  

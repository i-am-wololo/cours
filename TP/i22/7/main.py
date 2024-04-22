import random

def init_ram_list(nb: int)->list:
    '''
    retourne une liste de nb element representant la memoire
    keywords:
    nb -- longueure de la liste initialise
    '''
    return [0 for i in range(nb)]

def fill_ram_random(ram: list)->list:
    '''
    retourne une liste de memoire avec des elements modifies aleatoirement
    keywords:
    ram -- liste representant la memoire
    '''
    for i in range(len(ram)):
        ram[random.randrange(len(ram))] = random.randint(0, 255)
    return ram

def get_value_list(ram: list, address: int)-> int:
    '''
    retourne la valeur situe a l'adresse address
    keywords:
    ram -- liste representant la memoire
    address: integer representant l'adresse
    '''
    if address > len(ram):
        return None
    return ram[address]

def init_ram_dict(nb):
    '''
    retourne un dictionnaire representant la memoire
    keywords:
    nb -- taille de la memoire
    '''
    return {"taille":nb}

def fill_ram_place_dict(ram, nb):
    '''
    retourne un dictionnaire represantant la memoire avec des elements modifies aleatoirement
    keywords:
    ram -- dictionnaire representant la memoire
    nb -- nombre de cases a modifier
    '''
    for i in range(nb):
        ram[random.randrange(len(ram).keys())] = random.randint(0, 255)
    return ram

def get_value_dict(ram, element):
    '''
    retourne un element a l'adresse element
    '''
    if element not in ram:
        return None
    return ram[element]


def is_in(mem_asso,  mot):
    '''
    '''
    check = []
    HorM = ("MISS", "HIT")
    isin = mot in mem_asso
    index = 0
    for i in range(len(mem_asso)):
        check.append(mem_asso[i]==mot)
        if mem_asso[i] == mot:
            index = i
    return (isin, check, index)

def get_value(ram: dict, number: int)->dict:
    memcase = ram[number]
    if memcase['ok'] == False:
        memcase['data'] == None
    return memcase

def in_cache(mem_asso: list, mem_classique: dict, adresse: int)->tuple:
    pass



M = [{'ok': True, 'data': 0x44}, {'ok': False, 'data': 0xFF},
         {'ok': True, 'data': 0x22}, {'ok': True, 'data': 0x99}]

print(get_value(M, 3))

def tests():
    assert init_ram_list(16) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "something went wrong"
    assert fill_ram_random(init_ram_list(16)) != [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    assert get_value_list([0, 0, 0, 1], 3) == 1
    assert init_ram_dict(2) == {"taille":2}
    assert is_in([4, 1, 2, 0], 3) == ('MISS', [False, False, False, False], None)


#!/usr/bin/env python3

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

def init_ram_dict(nb: int):
    '''
    retourne un dictionnaire representant la memoire
    keywords:
    nb -- taille de la memoire
    '''
    return {"taille":nb}

def fill_ram_place_dict(ram: dict, nb: int):
    '''
    retourne un dictionnaire represantant la memoire avec des elements modifies aleatoirement
    keywords:
    ram -- dictionnaire representant la memoire
    nb -- nombre de cases a modifier
    '''
    for i in range(nb):
        ram[random.randrange(len(ram).keys())] = random.randint(0, 255)
    return ram

def get_value_dict(ram: dict, element: int):
    '''
    retourne un element situe à l'adresse dans une ram representé par un dictionnaire
    keywords:
    ram -- dictionnaire representant la mémoire
    element -- "adresse" de l'élement à chercher
    '''
    if element not in ram:
        return None
    return ram[element]


def is_in(mem_asso: list[int],  mot: int):
    '''
    cherche un tag/mot dans mem_asso, en retournant avec un vecteur de comparaison
    -> (HIT, vecteur, indice)
    keywords:
    mem
    '''
    check = []
    HorM = ("MISS", "HIT")
    isin = mot in mem_asso
    index = None
    for i in range(len(mem_asso)):
        check.append(mem_asso[i]==mot)
        if mem_asso[i] == mot:
            index = i
    return (HorM[isin], check, index)

def get_value(ram: dict, number: int)->dict:
    memcase = ram[number]
    if memcase['ok'] == False:
        memcase['data'] == None
    return memcase


def in_cache(mem_asso: list[int], mem_classique: dict, adresse: int)->tuple:
    '''
    cherche un 
    '''
    word = is_in(mem_asso, adresse)[0]
    miss = ("MISS", None)
    if word == "HIT":
        tag = get_value(mem_classique, word)
        if tag['ok'] == True:
            return ('HIT', int(tag[data], 16))
        return miss
    return miss
       
def in_cache_direct_mapped(mem_direct_mapped: list[dict], adresse: int)->tuple:
    '''
    keywords:
    mem_direct_mapped -- liste de dictionnaire representant des cases mémoires
    adresse -- int representant une adresse
    '''
    trueaddress = adresse % len(mem_direct_mapped)
    if mem_direct_mapped[trueaddress]['ok'] == False:
        return ("MISS", None)
    else: 
        return ("HIT", mem_direct_mapped[trueaddress])

def in_cache_direct_mapped_fixed(ram: list[dict], address: int)->tuple:
    '''
    in_cache_direct_mapped mais modifié pour ne pas dépasser la zone de mémoire
    '''
    tag = address//len(ram)
    trueaddress = address%len(ram)
    if mem_direct_mapped[trueaddress]['tag'] != tag or mem_direct_mapped[trueaddress]['ok'] == False:
        return ("MISS", None)
    else: 
        return ("HIT", mem_direct_mapped[trueaddress]['data'])

def replace_random(mem_asso: list[int], mem: list[dict])->int:
    '''
    retourne un indice au hasard si toute les cases mémoires sont occupés
    keywords:
    mem_asso -- liste representant une memoire associative
    mem -- liste de dictionnaire representant la memoire
    '''
    for i in mem:
        if i['ok'] == False:
            return i
    return random.randint(0, len(mem_asso))


# FIFO
def add_fifo(fifo: list, valeur: int)-> list:
    '''
    ajoute une valeur a la file fifo
    keywords:
    fifo -- liste "émulant" une file
    '''
    fifo[fifo.index(None)] = valeur
    return fifo

def get_fifo(fifol: list):
    '''
    retourne le premier élement de la file FIFO
    keywords:
    fifo -- liste "émulant" une file
    '''
    return fifo[1:]+[None], fifo[0]

def replace_fifo(mem_classique: list[dict], fifo: list[int])->tuple:
    for i in range(mem):
        if i['ok'] == False:
            return (i, fifo[:-1]+[i])
    return (fifo[0], fifo[1:]+fifo[0])

def update_lru(pile: list, valeur: int):
    pass        

M = [{'ok': True, 'data': 0x44}, {'ok': False, 'data': 0xFF},
         {'ok': True, 'data': 0x22}, {'ok': True, 'data': 0x99}]

mem_direct_mapped = [{'ok': True, 'data': 0x00, 'tag': 0x0},
                         {'ok': False, 'data': 0xFF, 'tag': 0x1},
                         {'ok': True, 'data': 0x22, 'tag': 0x0},
                         {'ok': True, 'data': 0x77, 'tag': 0x1}]
def tests():
    assert init_ram_list(16) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "something went wrong"
    assert fill_ram_random(init_ram_list(16)) != [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    assert get_value_list([0, 0, 0, 1], 3) == 1
    assert init_ram_dict(2) == {"taille":2}
    assert is_in([4, 1, 2, 0], 3) == ('MISS', [False, False, False, False], None)
    assert in_cache_direct_mapped_fixed(mem_direct_mapped, 0) == ('HIT', 0)
    assert in_cache_direct_mapped_fixed(mem_direct_mapped, 7) == ('HIT', 119)
    assert in_cache_direct_mapped_fixed(mem_direct_mapped, 1) == ('MISS', None)
    assert in_cache_direct_mapped_fixed(mem_direct_mapped, 3) == ('MISS', None)
    fifo = [None, None, None, None]
    fifo = add_fifo(fifo, 10)
    assert fifo == [10, None, None, None]
    fifo = add_fifo(fifo, 99)
    assert fifo == [10, 99, None, None]
    fifo = add_fifo(fifo, 2)
    assert fifo == [10, 99, 2, None]
    fifo, valeur = get_fifo(fifo)
    assert fifo, valeur == ([99, 2, None, None], 10)
    fifo, valeur = get_fifo(fifo)
    assert fifo, valeur == ([2, None, None, None], 99)
tests()

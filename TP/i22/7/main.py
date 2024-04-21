import random

def init_ram_list(nb: int)->list:
    return [0 for i in range(nb)]

def fill_ram_random(ram):
    for i in range(len(ram)):
        ram[random.randrange(len(ram))] = random.randint(0, 255)
    return ram

def get_value_list(ram, address):
    if address > len(ram):
        return None
    return ram[address]

def init_ram_dict(nb):
    return {"taille":nb}

def fill_ram_place_dict(ram, nb):
    for i in range(nb):
        ram[random.randrange(len(ram).keys())] = random.randint(0, 255)
    return ram

def get_value_dict(ram, element):
    if element not in ram:
        return None
    return ram[element]


def is_in(mem_asso,  mot):
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



M = [{'ok': True, 'data': 0x44}, {'ok': False, 'data': 0xFF},
         {'ok': True, 'data': 0x22}, {'ok': True, 'data': 0x99}]

def tests():
    assert init_ram_list(16) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "something went wrong"
    assert fill_ram_random(init_ram_list(16)) != [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    assert get_value_list([0, 0, 0, 1], 3) == 1
    assert init_ram_dict(2) == {"taille":2}

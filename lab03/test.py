'''
Autor: LOTEAT
Description: 
Date: 2022-02-21 21:06:50
'''
def crust():
    print("70km")
    def mantle():
         print("2900km")
         def core():
              print("5300km")
              return mantle()
         return core
    return mantle
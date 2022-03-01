'''
Autor: LOTEAT
Description: 
Date: 2022-02-22 16:18:33
'''
def cake():
   print('beets')
   def pie():
       print('sweets')
       return 'cake'
   return pie

chocolate = cake()
chocolate
chocolate()
more_chocolate, more_cake = chocolate(), cake
print(more_chocolate)
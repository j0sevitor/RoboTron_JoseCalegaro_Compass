# O programa solicita a entrada de 3 frutas, armazena elas em uma lista
# e compara com uma lista predefinida, por fim, apresenta se as duas
# listas são iguais ou não!

lista1 = ['maça', 'banana', 'pera']
lista2 = []
for i in range(0, 3):
    lista2.append(input('Qual a {}ª fruta?  -> '.format(i)))
if lista1 == lista2: print('As listas são iguais!')
else: print('As listas não são iguais!')
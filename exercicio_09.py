lista = []
for i in range(0, 15):
    lista.append(int(input('Informe o {}º valor da lista: '.format(i+1))))
lista.reverse()
for j in range(0, 15):
    print('{}º valor: {}'.format(15-j, lista[j]))

#https://www.programiz.com/python-programming/methods/list/reverse
#não conhecia a funcao .reverse, descobri ela no link acima
# O programa solicita a entrada de 15 valores inteiros e positivos,
# armazena dentro de uma lista, e por fim, apresenta os numeros na ordem inversa.
# não conhecia a funcao .reverse(), descobri ela no link abaixo
# https://www.programiz.com/python-programming/methods/list/reverse

lista = []
for i in range(0, 15):
    lista.append(int(input('Informe o {}º valor da lista: '.format(i+1))))
lista.reverse()
for j in range(0, 15):
    print('{}º valor: {}'.format(15-j, lista[j]))


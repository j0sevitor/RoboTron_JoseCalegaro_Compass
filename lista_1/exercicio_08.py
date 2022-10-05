# O programa solicita a entrada de 1 valor inteiro e positivo(x).
# ->Caso o valor inserido seja par, será apresentado na tela
# o retorno de uma função que calcula o fatorial de x.
# ->Caso o valor inserido seja impar, outra função
# irá apresentar na tela a tabuada de x.

def fatorial(x):
    fat = 1
    for i in range(1, x+1):
        fat = fat * i
    return fat

def tabuada(x):
    for i in range(1, 11):
        print('{} x {} = {}'.format(i, x, i*x))

def main():
    x = -1
    while x < 0:
        x = int(input('Insira um valor inteiro para "x": '))
        if x%2 == 0:
            print('O fatorial de {} é: {}'.format(x, fatorial(x)))
        else: tabuada(x)

main()

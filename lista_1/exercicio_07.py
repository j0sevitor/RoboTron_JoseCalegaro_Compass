# O programa solicita a entrada de 2 valores inteiros e positivos,
# o resultado é apresentado na tela após do retorno de uma função
# que calcula a média aritmética dos valores informados.

def media(a, b):
    return (a + b) / 2
x = int(input('Insira o primeiro valor: '))
y = int(input('Insira o segundo valor: '))
print('A média é: ', media(x, y))
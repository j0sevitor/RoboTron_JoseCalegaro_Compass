def imparPar(v1, v2):
    v1 = v1 + v2
    if v1%2 == 0: print('A soma resulta em um numero | PAR |')
    else: print('A soma resulta em um numero | IMPAR |')

valor1 = int(input('insira o primeiro valor: '))
valor2 = int(input('insira o segundo valor: '))
imparPar(valor1, valor2)
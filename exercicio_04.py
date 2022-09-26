def statusIdade(idade):
    if idade >= 18: print('Maior de idade')
    elif idade <= 12: print('Você é uma criança')
    else: print('Você é um adolescente')

idade = -1
while idade < 0:
    idade = int(input('insira sua idade: '))
    if idade >= 0: statusIdade(idade)
    else: print('A idade não pode ser negativa!')
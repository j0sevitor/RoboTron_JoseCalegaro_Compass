idade = -1
while idade < 0:
    idade = int(input('Insira sua idade em dias: '))
    print('A idade não pode ser negativa!')
print('{} ano(s)'.format(idade//365))
idade = idade - ((idade//365)*365)
print('{} mes(es)'.format(idade//30))
idade = idade - ((idade//30)*30)
print('{} dia(s)'.format(idade))
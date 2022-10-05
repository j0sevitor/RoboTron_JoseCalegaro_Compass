# O programa solicita a entrada de 1 valor inteiro e positivo,
# este valor é uma idade em dias, após isso ele calcula e apresenta
# na tela quantos anos, meses e dias o valor apresentado representa.
# -> Obs.: No cálculo, é considerado que todos os anos tem 365 dias
# e da mesma forma, todos os meses tem 30 dias.

idade = -1
while idade < 0:
    idade = int(input('Insira sua idade em dias: '))
    print('A idade não pode ser negativa!')
print('{} ano(s)'.format(idade//365))
idade = idade - ((idade//365)*365)
print('{} mes(es)'.format(idade//30))
idade = idade - ((idade//30)*30)
print('{} dia(s)'.format(idade))
x = 1
while x < 2:
    x = int(input('Insira um valor inteiro maior que 2: '))
    if x < 2: print('O valor deve ser maior que 2!')
for i in range(0, x):
    if i%2 != 0: print(i)
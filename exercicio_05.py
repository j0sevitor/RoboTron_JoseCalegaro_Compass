cont = media = x = 0
for i in range(1, 21):
    x = int(input('Insira o {}º valor de x: '.format(i)))
    if x%2 == 0:
        media += x
        cont += 1
print('A média é: ', media/cont)
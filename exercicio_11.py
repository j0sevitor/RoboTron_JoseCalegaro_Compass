horaI = int(input('Insira a hora de inicio do jogo: '))
horaT = int(input('Insira a hora de termino do jogo: '))
if (horaI < 0) or (horaT < 0) or (horaI  > 23) or (horaT > 23):
    print('Uma ou ambas as horas inseridas são inválidas')
    exit
elif horaI == horaT:
    print('O jogo durou 24 hora(s)')
elif horaI < horaT:
    print('O jogo durou {} hora(s)'.format(horaT - horaI))
elif horaI > horaT:
    print('O jogo durou {} hora(s)'.format(((horaI - horaT) - 24)*-1))
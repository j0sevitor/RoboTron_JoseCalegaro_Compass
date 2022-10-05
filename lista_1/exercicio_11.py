# O programa solicita a entrada de 2 valores inteiros e positivo,
# hora de inicio e hora de termino de um jogo, verifica se são
# horários válidos e porm fim apresenta na tela quantas horas
# o jogo durou.

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
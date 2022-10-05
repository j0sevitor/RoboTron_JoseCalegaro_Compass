import pandas as pd

arquivo = pd.read_csv('ptable.csv', encoding='UTF-8',sep=",")

#Apresenta na tela a coluna informada pelo usuário
def ex_A():
    i = 0
    while(i != 1):
        coluna = arquivo[(str(input('Qual a coluna da tabela? -> ')))]
        print(coluna)
        
#Apresenta na tela os dados do elemento informado pelo usuário
def ex_B():
    simb = input('Qual o simbolo do elemento? -> ')
    print(arquivo[arquivo["Simbolo"] == simb])

#Apresenta na tela todo o csv
def ex_C():
    print(arquivo)

def main():
    print('\nExercícios disponiveis: A, B e C!\nPara finalizar: q')
    while(1):
        exe = input('\nQual o exercício que deseja executar? -> ')
        match exe:
            case 'q': break
            case 'a': ex_A()
            case 'b': ex_B()
            case 'c': ex_C()
            case _: print('Entrada inválida!')

main()
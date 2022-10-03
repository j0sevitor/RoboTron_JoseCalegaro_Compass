import pandas as pd

arquivo = pd.read_csv('arquivos\oscar.csv', encoding='UTF-8',sep=",")

def ex_08():
    print(arquivo)

def ex_09():
    age = pd.read_csv('arquivos\oscar.csv', encoding='UTF-8', sep=",", usecols=["Age"])
    print(age)

def ex_10():
    print(arquivo["Movie"][arquivo["Movie"] == "Milk"])

def ex_11():
    print(arquivo["Name"][arquivo["Year"] == 1993])
    
def ex_12():
    print(arquivo["Name"][arquivo["Year"] == 1991])
    print(arquivo["Name"][arquivo["Year"] == 2016])

def ex_13():
    arquivo["YearMovie"] = arquivo["Movie"] + " " +  arquivo["Year"] 
    print(arquivo["YearMovie"])
    
def ex_14():
    print(arquivo.loc[59:71, ["Name", "Age"]])
    
def ex_15():
    print(arquivo[arquivo["Movie"] != "The Revenant"])

def main():
    print('\nExercícios disponiveis: 8, 9, 10, 11, 12, 13, 14 e 15!\nPara finalizar: -1')
    while(1):
        exe = int(input('\nQual o exercício que deseja executar? -> '))
        match exe:
            case -1: break
            case 8: ex_08()
            case 9: ex_09()
            case 10: ex_10()
            case 11: ex_11()
            case 12: ex_12()
            case 13: ex_13()
            case 14: ex_14()
            case 15: ex_15()
            case _: print('Entrada inválida!')

main()
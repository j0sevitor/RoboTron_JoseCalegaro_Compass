import pandas as pd

arquivo = pd.read_csv('oscar.csv', encoding='UTF-8',sep=",")

# Apresentando todo os dados do csv
def ex_08():
    print(arquivo)

# Lendo e apresentando apenas os dados da coluna age
def ex_09():
    age = pd.read_csv('arquivos\oscar.csv', encoding='UTF-8', sep=",", usecols=["Age"])
    print(age)

# Apresentando um dado específico
def ex_10():
    print(arquivo["Movie"][arquivo["Movie"] == "Milk"])

# Apresentando o "Name" na linha que contém 1993 como "Year" 
def ex_11():
    print(arquivo["Name"][arquivo["Year"] == 1993])

# Apresentando os "Name" nas linhas que contém 1991 e 2016 como "Year"
def ex_12():
    print(arquivo["Name"][arquivo["Year"] == 1991])
    print(arquivo["Name"][arquivo["Year"] == 2016])

# Criando e apresentando uma coluna extra que contém os dados de "Movie" e "Year" de todo o csv
def ex_13():
    arquivo["MovieYear"] = arquivo["Movie"] + " " +  arquivo["Year"] 
    print(arquivo["MovieYear"])

# Apresentando os dados "Name" e "Age" entre as linhas que possuem 1987 e 1999 como "Year"
def ex_14():
    print(arquivo.loc[59:71, ["Name", "Age"]])

# Apresentando todos os dados da coluna "Movie", exceto o "The Revenant"
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
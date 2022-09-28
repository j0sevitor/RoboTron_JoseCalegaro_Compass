import json
with open ('arquivos\partida.json', 'r', encoding='UTF-8') as partida_json:
    conteudo = json.loads(partida_json.read())

def ex_01():# printa todo o conteudo do JSON
    print(conteudo) 

def ex_02():# verifica qual foi o time vencedor e printa o nome do mesmo
    pm = conteudo['copa-do-brasil'][0]['placar_mandante']
    pv = conteudo['copa-do-brasil'][0]['placar_visitante'] 
    if pm > pv: print(conteudo['copa-do-brasil'][0]['time_mandante']['nome_popular'])
    else: print(conteudo['copa-do-brasil'][0]['time_visitante']['nome_popular'])
    
def ex_03():# armazena 3 valores em 3 variáveis e printa elas
    ne = conteudo['copa-do-brasil'][0]['estadio']['nome_popular']
    p = conteudo['copa-do-brasil'][0]['placar']
    sj = conteudo['copa-do-brasil'][0]['status']
    print('Nome do estádio: {}\nPlacar: {}\nStatus do jogo: {}'.format(ne, p, sj))

def ex_04():# printando as chaves e valores de determinado objeto
    print(conteudo['copa-do-brasil'][0]['time_visitante']) 

def main():
    print('\nExercícios disponiveis: 1, 2, 3 e 4!\nPara finalizar: -1')
    while(1):
        exe = int(input('\nQual o exercício que deseja executar? -> '))
        match exe:
            case -1: break
            case 1: ex_01()
            case 2: ex_02()
            case 3: ex_03()
            case 4: ex_04()
            case _: print('Entrada inválida!')

main()
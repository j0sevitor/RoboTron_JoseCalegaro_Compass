import json
with open ('arquivos\partida.json', 'r', encoding='UTF-8') as partida_json:
    conteudo_part = json.loads(partida_json.read())

with open ('arquivos\campeonato.json', 'r', encoding='UTF-8') as campeonato_json:
    conteudo_camp = json.loads(campeonato_json.read())

def ex_01():# printa todo o conteudo do JSON
    print(conteudo_part) 

def ex_02():# verifica qual foi o time vencedor e printa o nome do mesmo
    pm = conteudo_part['copa-do-brasil'][0]['placar_mandante']
    pv = conteudo_part['copa-do-brasil'][0]['placar_visitante'] 
    if pm > pv: print(conteudo_part['copa-do-brasil'][0]['time_mandante']['nome_popular'])
    else: print(conteudo_part['copa-do-brasil'][0]['time_visitante']['nome_popular'])
    
def ex_03():# armazena 3 valores em 3 variáveis e printa elas
    ne = conteudo_part['copa-do-brasil'][0]['estadio']['nome_popular']
    p = conteudo_part['copa-do-brasil'][0]['placar']
    sj = conteudo_part['copa-do-brasil'][0]['status']
    print('Nome do estádio: {}\nPlacar: {}\nStatus do jogo: {}'.format(ne, p, sj))

def ex_04():# printando as chaves e valores de determinado objeto
    print(conteudo_part['copa-do-brasil'][0]['time_visitante']) 

def ex_05():# printa todo o conteudo do JSON
    print(conteudo_camp) 

def ex_06():# printa os primeiros dados de 3 subdicionarios
    for data in conteudo_camp['edicao_atual'], conteudo_camp['fase_atual'], conteudo_camp['rodada_atual']:
        for i in data.keys():
            for j in data.values():
                print('chave: {}, Valor: {}'.format(i, j))
                break
            break
    
def ex_07():# printa as chaves principais 
    for k in conteudo_camp.keys():
        print(k)

def main():
    print('\nExercícios disponiveis: 1, 2, 3, 4, 5, 6 e 7!\nPara finalizar: -1')
    while(1):
        exe = int(input('\nQual o exercício que deseja executar? -> '))
        match exe:
            case -1: break
            case 1: ex_01()
            case 2: ex_02()
            case 3: ex_03()
            case 4: ex_04()
            case 5: ex_05()
            case 6: ex_06()
            case 7: ex_07()
            case _: print('Entrada inválida!')

main()
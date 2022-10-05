# O programa é diferente dos outros apresentados, em suma ele abre dois arquivos
# JSON e guarda nas variáveis conteudo_part e conteudo_camp. Após, temos a 
# possibilidade de executar: 
#   4 funções (ex_01(), ex_02(), ex_03() & ex_04()) com o arquivo partida.json;
#   3 funções(ex_05(), ex_06() & ex_07()) com o arquivo campeonato.json.
# O programa conta também com a função principal(main).

# No arquivo partida.json contém informações referente a uma partida de
# futebol da copa do Brasil.

# No arquivo campeonato.json contém informações referente a uma edição do
# campeonato brasileiro

import json
with open ('arquivos\partida.json', 'r', encoding='UTF-8') as partida_json:
    conteudo_partida = json.loads(partida_json.read())

with open ('arquivos\campeonato.json', 'r', encoding='UTF-8') as campeonato_json:
    conteudo_campeonato = json.loads(campeonato_json.read())


# Apresenta todo o conteudo do JSON
def ex_01():
    print(conteudo_partida) 

# Verifica qual foi o time vencedor e apresenta o nome do mesmo
def ex_02():
    pm = conteudo_partida['copa-do-brasil'][0]['placar_mandante']
    pv = conteudo_partida['copa-do-brasil'][0]['placar_visitante'] 
    if pm > pv: print(conteudo_partida['copa-do-brasil'][0]['time_mandante']['nome_popular'])
    else: print(conteudo_partida['copa-do-brasil'][0]['time_visitante']['nome_popular'])

# Armazena os valores: Nome do estádio, Placar & Status do jogo, nas respectivas variáveis: ne, p & sj. Por fim apresenta os valores das 3 variávies.
def ex_03():
    ne = conteudo_partida['copa-do-brasil'][0]['estadio']['nome_popular']
    p = conteudo_partida['copa-do-brasil'][0]['placar']
    sj = conteudo_partida['copa-do-brasil'][0]['status']
    print('Nome do estádio: {}\nPlacar: {}\nStatus do jogo: {}'.format(ne, p, sj))

# Apresenta todas as chaves e valores contidos no JSON referente ao time visitante.
def ex_04():
    print(conteudo_partida['copa-do-brasil'][0]['time_visitante']) 

# Apresenta todos os dados contidos no JSON.
def ex_05(): 
    print(conteudo_campeonato) 

# Apresenta os primeiros dados(chave+valor) dos subdicionários "edicao_atual", "fase_atual" e "rodada_atual".
def ex_06():
    for data in conteudo_campeonato['edicao_atual'], conteudo_campeonato['fase_atual'], conteudo_campeonato['rodada_atual']:
        for i in data.keys():
            for j in data.values():
                print('chave: {}, Valor: {}'.format(i, j))
                break
            break
    
# Apresenta as principais chaves contidos no JSON utilizando um loop FOR.     
def ex_07():
    for k in conteudo_campeonato.keys():
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
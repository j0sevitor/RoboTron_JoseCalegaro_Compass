*** Settings ***
Documentation    Arquivo de Testes para Endpoint /usuarios


#token dura 10 minutos
*** Test Cases ***
Cenario: GET Todos os usuarios 200
    [Tags]    GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${8}"
    Printar Conteudo Response

Cenario: POST cadastrar Usuario 201
    [Tags]    POST    
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Editar Usuario 200
    [Tags]    PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    [Tags]    DELETE
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST Criar Usuario de Massa Estatica 201
    [Tags]    POSTCRIARUSUARIOESTATICO
    Criar Sessao
    Cadastrar Usuario Estatico Valido
    Validar Status Code "201"

Cenario: POST Criar Usuario de Massa dinamica 201
    [Tags]    POSTCRIARUSUARIODINAMICO
    Criar Sessao
    Cadastrar Usuario Dinamico Valido
    Validar Status Code "201"
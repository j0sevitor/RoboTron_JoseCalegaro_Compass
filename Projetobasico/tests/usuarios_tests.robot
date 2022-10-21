*** Settings ***
Documentation    Arquivo de Testes para Endpoint /usuarios
Resource         ../keywords/usuarios_keywords.robot

Suite Setup        Criar Sessao
#token dura 10 minutos
*** Test Cases ***
Cenario: GET Todos os usuarios 200
    [Tags]    GET
    GET Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST cadastrar Usuario 201
    [Tags]    POST  
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Editar Usuario 200
    [Tags]    PUT
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    [Tags]    DELETE
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    DELETE Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST Criar Usuario de Massa Estatica 201
    [Tags]    POSTCRIARUSUARIOESTATICO
    Pegar Dados Usuario Estatico Valido
    POST Endpoint /usuarios
    Validar Status Code "201"

Cenario: POST Criar Usuario de Massa dinamica 201
    [Tags]    POSTCRIARUSUARIODINAMICO
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    Validar Status Code "201"
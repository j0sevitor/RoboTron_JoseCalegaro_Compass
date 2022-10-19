*** Settings ***
Documentation    Arquivo de Testes para Endpoint /login


#token dura 10 minutos
*** Test Cases ***
Cenario: POST Realizar Login 200
    [Tags]    POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

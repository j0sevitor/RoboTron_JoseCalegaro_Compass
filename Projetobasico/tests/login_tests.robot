*** Settings ***
Documentation    Arquivo de Testes para Endpoint /login
Resource         ../keywords/login_keywords.robot


Suite Setup        Criar Sessao
#token dura 10 minutos
*** Test Cases ***
Cenario: POST Realizar Login 200
    [Tags]    POSTLOGIN
    POST Endpoint /login
    Validar Status Code "200"

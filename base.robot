*** Settings ***
Documentation    Arquivo simples para requisicoes HTTP em APIs Rest
Library          RequestsLibrary


*** Variables ***



*** Test Cases ***
Cenário: GET Todos os usuarios 200
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"




*** Keywords ***
Criar Sessao
    Create Session    serverest     https://serverest.dev

GET Endpoint /usuarios
    ${response}            GET On Session    serverest    /usuarios
    Set Global Variable    ${response}

Validar Status Code "${statuscode}"
    Should Be True    ${response.status_code} == ${statuscode}
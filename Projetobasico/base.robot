*** Settings ***
Documentation    Arquivo simples para requisicoes HTTP em APIs Rest
Library          RequestsLibrary


*** Variables ***


#token dura 10 minutos
*** Test Cases ***
Cenario: GET Todos os usuarios 200
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST cadastrar Usuario 201
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"

Cenario: PUT Editar Usuario 200
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"

*** Keywords ***
Criar Sessao
    Create Session    serverest     https://serverest.dev

GET Endpoint /usuarios
    ${response}            GET On Session    serverest    /usuarios
    Set Global Variable    ${response}

POST Endpoint /usuarios
    &{payload}        Create Dictionary        nome=jeirson priest    email=testejeirsonp123@gmail.com        password=123        administrador=true
    ${response}        POST On Session    serverest    /usuarios        data=&{payload}
    Log To console    Response: ${response.content} 
    Set Global Variable    ${response}

PUT Endpoint /usuarios
    &{payload}        Create Dictionary        nome=jade priest    email=testejadep123@gmail.com        password=123        administrador=true
    ${response}    PUT On Session    serverest    /usuarios/BuDTuUzJKv8EohZI    data=&{payload}
    Log To console    Response: ${response.content} 
    Set Global Variable    ${response}

DELETE Endpoint /usuarios
    ${response}    DELETE On Session    serverest    /usuarios/BuDTuUzJKv8EohZI
    Log To console    Response: ${response.content}
    Set Global Variable    ${response} 

Validar Status Code "${statuscode}"
    Should Be True    ${response.status_code} == ${statuscode}
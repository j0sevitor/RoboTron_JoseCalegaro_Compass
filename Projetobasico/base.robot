*** Settings ***
Documentation    Arquivo simples para requisicoes HTTP em APIs Rest
Library          RequestsLibrary


*** Variables ***


#token dura 10 minutos
*** Test Cases ***
Cenario: GET Todos os usuarios 200
    [Tags]    GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${3}"
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

*** Keywords ***
Criar Sessao
    Create Session    serverest     https://serverest.dev

GET Endpoint /usuarios
    ${response}            GET On Session    serverest    /usuarios
    Set Global Variable    ${response}

POST Endpoint /usuarios
    &{payload}        Create Dictionary        nome=jerson priest    email=testejersonp123@gmail.com        password=123        administrador=true
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

Validar Quantidade "${quantidade}" 
    Should Be Equal    ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain    ${response.json()["message"]}    ${palavra}

Printar Conteudo Response
    Log To Console    Response: ${response.json()["usuarios"][0]["nome"]}
*** Settings ***
Documentation    Arquivo simples para requisicoes HTTP em APIs Rest
Library          RequestsLibrary
Resource         ./usuarios_keywords.robot
Resource         ./login_keywords.robot
Resource         ./produtos_keywords.robot


*** Variables ***
${nome_do_usuario}            herbert richards
${senha_do_usuario}           teste123
${email_do_usuario}           herbertrteste@gmail.com


#token dura 10 minutos
*** Test Cases ***
Cenario: GET Todos os usuarios 200
    [Tags]    GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${1}"
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

Cenario: POST Realizar Login 200
    [Tags]    POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

Cenario: POST Criar Produto 201
    [Tags]    POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"
    
Cenario: DELETE Excluir produto 200
    [Tags]    DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"

*** Keywords ***
Criar Sessao
    Create Session    serverest     https://serverest.dev

Validar Status Code "${statuscode}"
    Should Be True    ${response.status_code} == ${statuscode}

Validar Quantidade "${quantidade}" 
    Should Be Equal    ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain    ${response.json()["message"]}    ${palavra}

Printar Conteudo Response
    Log To Console    Response: ${response.json()["usuarios"][0]["nome"]}
*** Settings ***
Documentation        Keywords e Variaveis para ações de endpoint de produtos

*** Keywords ***
POST Endpoint /produtos
    &{header}          Create Dictionary    Authorization=${token_auth}
    &{payload}         Create Dictionary    nome=Teclados    preco=300    descricao=Positivo    quantidade=20
    ${response}        POST On Session      serverest    /produtos        data=&{payload}    headers=&{header}
    Log To console    Response: ${response.content} 
    Set Global Variable    ${response}

DELETE Endpoint /produtos
    &{header}          Create Dictionary    Authorization=${token_auth}
    ${response}        DELETE On Session      serverest    /produtos/${id_produto}    headers=&{header}
    Log To console     Response: ${response.content} 
    Set Global Variable    ${response}

Validar ter Criado Produto
    Should Be Equal        ${response.json()["message"]}        Cadastro realizado com sucesso
    Should Not Be Empty    ${response.json()["_id"]}

Criar um Produto e Armazenar ID
    POST Endpoint /produtos
    Validar ter Criado Produto
    ${id_produto}                    Set Variable        ${response.json()["_id"]}
    Log To Console                   ID Produto: ${id_produto}
    Set Global Variable              ${id_produto}
    
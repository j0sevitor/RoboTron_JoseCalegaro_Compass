*** Settings ***
Documentation        Keywords e Variaveis para ações de endpoint de usuarios
Resource             ./common.robot
*** Variables ***
${nome_do_usuario}            herbert richards
${senha_do_usuario}           teste123
${email_do_usuario}           herbertrteste@gmail.com


*** Keywords ***
GET Endpoint /usuarios
    ${response}            GET On Session    serverest    /usuarios
    Set Global Variable    ${response}

POST Endpoint /usuarios
    ${response}        POST On Session    serverest    /usuarios        json=&{payload}
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

Validar Quantidade "${quantidade}" 
    Should Be Equal    ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain    ${response.json()["message"]}    ${palavra}

Printar Conteudo Response
    Log To Console    Response: ${response}

Criar Usuario Estatico Valido
    ${json}            Importar JSON Estatico    json_usuario_ex.json
    ${payload}         Set Variable        ${json["user_valido"]}
    Set Global Variable    ${payload}
    POST Endpoint /usuarios
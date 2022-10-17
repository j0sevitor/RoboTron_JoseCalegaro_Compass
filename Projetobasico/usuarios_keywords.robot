*** Settings ***
Documentation        Keywords e Variaveis para ações de endpoint de usuarios

*** Variables ***
${nome_do_usuario}            herbert richards
${senha_do_usuario}           teste123
${email_do_usuario}           herbertrteste@gmail.com


*** Keywords ***
GET Endpoint /usuarios
    ${response}            GET On Session    serverest    /usuarios
    Set Global Variable    ${response}

POST Endpoint /usuarios
    &{payload}        Create Dictionary        nome=${nome_do_usuario}    email=${email_do_usuario}        password=${senha_do_usuario}        administrador=true
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
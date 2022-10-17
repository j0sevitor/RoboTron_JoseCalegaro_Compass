*** Settings ***
Documentation        Keywords e Variaveis para ações de endpoint de produtos

*** Variables ***
${token_auth}        Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZ1bGFub0BxYS5jb20iLCJwYXNzd29yZCI6InRlc3RlIiwiaWF0IjoxNjY1OTcyNTA1LCJleHAiOjE2NjU5NzMxMDV9.fgFN4BURR18o62uSZ0foCDmfv8PsoWYd0NDlDTyB8Y0

*** Keywords ***
POST Endpoint /produtos
    &{header}          Create Dictionary    Authorization=${token_auth}
    &{payload}         Create Dictionary    nome=MouseTech    preco=400    descricao=Mouse    quantidade=100
    ${response}        POST On Session      serverest    /produtos        data=&{payload}    headers=&{header}
    Log To console    Response: ${response.content} 
    Set Global Variable    ${response}
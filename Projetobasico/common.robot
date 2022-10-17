*** Settings ***
Documentation        Keywords e Variaveis para ações gerais
Library              OperatingSystem

*** Variables ***
${email_para_login}        fulano@qa.com
${password_para_login}     teste


*** Keywords ***

Validar Status Code "${statuscode}"
    Should Be True    ${response.status_code} == ${statuscode}

Importar JSON Estatico
    [Arguments]        ${nome__arquivo}
    ${arquivo}         Get File    ${EXECDIR}/${nome__arquivo}
    ${data}            Evaluate        json.loads('''${arquivo}''')    json
    [Return]           ${data}

*Test Cases *
Cenário: GET Todos os usuarios 200
    GET Endpoint /usuarios
    Validar Todos os Usuarios na Response
    Validar Status Code 200

Cenario: GET Usuarios Especifico 200
    Get Endpoint /usuarios com id "/GGTtwearsdw223"
    Validar o Usuario com id "/GGTtwearsdw223"
    Validar Status Code "200"
    Validar Mensagem "Nome = Fulano da Silva"

Cenario: POST Criar Novo Usuario 201
    Criar Usuario Dinamico
    POST Usuario Dinamico no Endpoint /usuarios
    Validar Status Code "201"
    Validar Mensagem "Cadastro realizado com sucesso"

Cenario: PUT Editar Usuario Existente 200
    PUT Editar Usuario com id "/GGTtwearsdw" usando Dados Dinamicos
    Validar Status Code "200"
    Validar Mensagem "Registro alterado com sucesso"

Cenario: DELETE Usuario Existente 200
    DELETE Usuario Especifico com id "/GGTtwearsdw223" 
    Validar Status Code "200"
    Validar Mensagem "Registro excluido com sucesso | Nenhum registro excluido"
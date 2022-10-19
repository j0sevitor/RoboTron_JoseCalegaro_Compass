*** Settings ***
Documentation    Arquivo simples para requisicoes HTTP em APIs Rest
Library          RequestsLibrary
Library          Collections
Library          OperatingSystem
Resource         ./common/common.robot
Resource         ./fixtures/dynamics.robot
Resource         ./variables/serverest_variables.robot



*** Keywords ***
Criar Sessao
    Create Session    serverest     ${BASE_URI}



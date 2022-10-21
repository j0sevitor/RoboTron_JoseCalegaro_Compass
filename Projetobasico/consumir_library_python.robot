*** Settings ***
Documentation    Arquivo de Teste para Library PYTHON
Library          library_teste.py

*** Test Cases ***
Teste Library 1
    ${json}               Get Endpoint Usuarios Tantas Vezes    ${1} 
    Log To Console        ${json}
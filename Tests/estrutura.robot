*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    zzzzz
${variavel3}    456789

*** Keywords ***
abrir site da google
    Open Browser    https://www.google.com.br    chrome
    
fechar navegador
    Close Browser
    
abrir site da globo
    Open Browser    https://www.globo.com/    chrome

*** Test Cases ***
Cenario 1: Teste de abrir site google
    [Tags]    regressivo
    abrir site da google
    fechar navegador

Cenario 2: Teste de abrir site globo
    abrir site da globo
    fechar navegador
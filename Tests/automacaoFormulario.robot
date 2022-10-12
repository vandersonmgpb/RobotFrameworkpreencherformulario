*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}            //input[@aria-describedby='name']   
${input_phone}           //input[contains(@aria-describedby,'phone')]
${input_email}           //input[contains(@type,'email')]
${input_password}        //input[contains(@type,'password')]
${textarea_address}      //textarea[contains(@class,'form-control')]
${button_submit}         //button[@type='submit'][contains(.,'Submit')]

*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

preencher campos
    Input Text    ${input_name}    Jose Silva
    Input Text    ${input_phone}    999999999
    Input Text    ${input_email}    josesilva@email.com
    Input Text    ${input_password}    02356
    Input Text    ${textarea_address}    rua endereco de tal

clicar em submit
    Click Element    ${button_submit}

fechar nevegador
    Close Browser

*** Test Cases ***
Cenario 1: preencher formulario
    abrir navegador e acessar site
    preencher campos
    Clicar em submit
    fechar nevegador


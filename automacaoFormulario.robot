*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}    
${input_phone}    
${input_email}    
${input_password}   
${textarea_address}    
${button_submit}    

*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

preencher campos
    Input Text    ${input_name}    Jose Silva
    Sleep    1s
    Input Text    ${input_phone}    999999999
    Sleep    1s
    Input Text    ${input_email}    josesilva@email.com
    Sleep    1s

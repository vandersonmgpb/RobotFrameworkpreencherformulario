*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Dados do teste
${NomedaMusica}    Diego & Victor Hugo, Bruno & Marrone - Facas (Ao Vivo)  

# Variaveis de configuracao
${URL}    https://www.youtube.com/
${Browser}    chrome

# Elementos
${Input_Pesquisa}    //input[contains(@autocapitalize,'none')]
${Button_Pesquisa}    //button[@id="search-icon-legacy"]
${Primeiro}    //yt-formatted-string[@class='style-scope ytd-video-renderer'][contains(.,'Diego & Victor Hugo, Bruno & Marrone - Facas (Ao Vivo)')]
${Prova}    //yt-formatted-string[@class='style-scope ytd-button-renderer style-default size-default'][contains(.,'Compartilhar')]


*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${Browser}
Quando digito o nome da musica
    Input Text    ${Input_Pesquisa}    ${NomedaMusica}
E clico no botao buscar
    Click Element    ${Button_Pesquisa}    
E clico na primeira opcao da lista
    Wait Until Element Is Visible    ${Primeiro}    10
    Click Element    ${Primeiro}    
Entao o video e executado
    Wait Until Element Is Visible    ${Prova}    10
    Element Should Be Visible    ${Prova}
    Close Browser
    
*** Test Cases ***
Cenario 1: Executar um video no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da musica
    E clico no botao buscar
    E clico na primeira opcao da lista
    Entao o video e executado
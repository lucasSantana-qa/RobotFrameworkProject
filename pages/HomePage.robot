*** Settings ***
Library    SeleniumLibrary
Resource    ../utils/Utils.robot

*** Variables ***
${sliderRow}    //div[@id='slider_row']
${titleHomePage}        My Shop
${loginButton}    //a[@class='login']  

*** Keywords ***

Validar titulo home page
    Validar Titulo da Pagina   ${titleHomePage}

Clicar botao login
    Element Should Be Visible    ${loginButton}    ${time}
    Click Link    ${loginButton}

    

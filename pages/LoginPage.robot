*** Settings ***
Library    SeleniumLibrary
Resource    ../utils/Utils.robot

*** Variables ***
${titleLoginPage}    Login - My Shop
${emailInput}    //input[@id='email']
${PasswdInput}    //input[@id='passwd']
${password}    12345
${email}    automatedTest@qa.com
${submitLogin}    //button[@id='SubmitLogin']
${loginUserNameButton}    //span[text()='Qa Test']    
${titleMyAccountPage}    My account - My Shop

*** Keywords ***

Validar Titulo Login Page
    Validar Titulo da Pagina    ${titleLoginPage}

Fazer Login
    Input Text    ${emailInput}    ${email}
    Input Password    ${PasswdInput}    ${password}
    Click Button    ${submitLogin}

Validar Nome de Usuario no Botao Login
    Wait Until Element Is Visible    ${loginUserNameButton}
    Element Text Should Be    ${loginUserNameButton}   Qa Test
    Title Should Be    ${titleMyAccountPage}
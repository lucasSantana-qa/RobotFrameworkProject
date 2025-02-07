*** Settings ***
Library          SeleniumLibrary
Resource         ../utils/Utils.robot
Test Setup       Open Browser Remotely
Test Teardown    Quit browser

*** Variables ***
${time}         5
${sliderRow}    //div[@id='slider_row']
${titleHomePage}        My Shop
${loginButton}    //a[@class='login']  
${titleLoginPage}    Login - My Shop
${emailInput}    //input[@id='email']
${PasswdInput}    //input[@id='passwd']
${password}    12345
${email}    automatedTest@qa.com
${submitLogin}    //button[@id='SubmitLogin']
${loginUserNameButton}    //a[@class='account']/span    
${titleMyAccountPage}    My account - My Shop
${buttonDresses}    (//a[@title='Dresses'])[2]

*** Test Cases ***
Abrir site e realizar uma compra
    Dado que estou no site My Shop
    E realizo login
    Quando acesso a aba Dresses

*** Keywords ***
Dado que estou no site My Shop
    Element Should Be Visible    ${sliderRow}    ${time}
    Title Should Be    ${titleHomePage}

E realizo login
    Element Should Be Visible    ${loginButton}    ${time}
    Click Link    ${loginButton}
    Title Should Be    ${titleLoginPage}
    Input Text    ${emailInput}    ${email}
    Input Password    ${PasswdInput}    ${password}
    Click Button    ${submitLogin}
    Element Text Should Be    ${loginUserNameButton}   Qa Test
    Title Should Be    ${titleMyAccountPage}

Quando acesso a aba Dresses
    Click Link    ${buttonDresses}

#Então adiciono produto no carrinho

#E realizo o checkout do carrinho
    

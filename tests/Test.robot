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
${password}    1234
${email}

*** Test Cases ***
Abrir site e realizar uma compra
    Dado que estou no site My Shop
    E realizo login

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
    

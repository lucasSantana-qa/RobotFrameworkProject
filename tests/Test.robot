*** Settings ***
Library          SeleniumLibrary
Resource         ../utils/Utils.robot
Test Setup       Open Browser Remotely
Test Teardown    Quit browser

*** Variables ***
${time}         5
${sliderRow}    //div[@id='slider_row']
${title}        My Shop

*** Test Cases ***
Abrir site e realizar uma compra
    Dado que estou no site My Shop

*** Keywords ***
Dado que estou no site My Shop
    Wait Until Element Is Visible    ${sliderRow}    ${time}
    Title Should Be    ${title}
    

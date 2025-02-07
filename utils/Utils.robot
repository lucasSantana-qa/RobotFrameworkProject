*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${REMOTE_URL}    http://www.automationpractice.pl/index.php
${BROWSER}       chrome
${time}    5

*** Keywords ***
Open Browser Remotely
    Open Browser    ${REMOTE_URL}    browser=${BROWSER}
    Maximize Browser Window

Quit browser
    Close All Browsers

Validar Titulo da Pagina
    [Arguments]    ${expectedTilte}    
    Title Should Be    ${expectedTilte}  
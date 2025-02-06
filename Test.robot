*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${REMOTE_URL}    http://www.automationpractice.pl/index.php
${BROWSER}       chrome

*** Test Cases ***
Open Browser Remotely
    Open Browser    ${REMOTE_URL}    browser=${BROWSER}
    [Teardown]    Close Browser
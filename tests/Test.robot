*** Settings ***
Library          SeleniumLibrary
Resource         ../utils/Utils.robot
Resource         ../pages/HomePage.robot
Resource         ../pages/LoginPage.robot
Resource         ../pages/DressesPage.robot

Test Setup       Open Browser Remotely
Test Teardown    Quit browser

*** Variables ***

*** Test Cases ***
Abrir site e realizar uma compra
    Dado que estou no site My Shop
    E realizo login
    Quando acesso a aba Dresses
    Então adiciono produto no carrinho

*** Keywords ***
Dado que estou no site My Shop
    Validar titulo home page

E realizo login
    Clicar botao login
    Validar Titulo Login Page
    Fazer Login
    Validar Nome de Usuario no Botao Login

Quando acesso a aba Dresses
    Acessar Aba Dresses
    Validar Titulo Dresses Page

Então adiciono produto no carrinho
    Clicar checkbox
    Selecionar Produto
    Adicionar produto disponível
    
#E realizo o checkout do carrinho
    

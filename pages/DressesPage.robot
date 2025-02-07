*** Settings ***
Library    SeleniumLibrary
Resource    ../utils/Utils.robot

*** Variables ***
${buttonDresses}    (//a[@title='Dresses'])[2]
${titleDressesPage}    Dresses - My Shop
${checkboxInStock}    //input[@id='layered_quantity_1']
${product1}    (//ul[@class='product_list grid row']/li)[1]

*** Keywords ***
Acessar Aba Dresses
    Click Link    ${buttonDresses}

Validar Titulo Dresses Page
    Validar Titulo da Pagina    ${titleDressesPage}    

Clicar checkbox
    Select Checkbox    ${checkboxInStock}

Selecionar Produto
    Click Element    ${product1}

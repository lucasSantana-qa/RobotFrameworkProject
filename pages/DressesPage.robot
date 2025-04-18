*** Settings ***
Library    SeleniumLibrary
Resource    ../utils/Utils.robot

*** Variables ***
${buttonDresses}    (//a[@title='Dresses'])[2]
${titleDressesPage}    Dresses - My Shop
${checkboxInStock}    //input[@id='layered_quantity_1']
${product1}    (//ul[@class='product_list grid row']/li)[1]
${buttonMore}    (//ul[@class='product_list grid row']/li)[1]//a[@class='button lnk_view btn btn-default']
${selectSize}    //select[@id='group_1']
${colorPink}    //a[@name='Pink']
${addToCart}    //span[contains(.,'Add to cart')]


*** Keywords ***
Acessar Aba Dresses
    Wait Until Element Is Visible    ${buttonDresses}
    Click Link    ${buttonDresses}

Validar Titulo Dresses Page
    Validar Titulo da Pagina    ${titleDressesPage}    

Clicar checkbox
    Wait Until Element Is Visible    ${checkboxInStock}
    Select Checkbox    ${checkboxInStock}
    Sleep    1
    Validar Titulo da Pagina    Dresses > Availability In stock - My Shop

Selecionar Produto
    Mouse Over    ${product1}
    Click Element    ${buttonMore}

Adicionar produto disponível
    Validar Titulo da Pagina    Printed Dress - My Shop
    Select From List By Label    ${selectSize}    M
    Click Element    ${colorPink}
    Wait Until Element Is Visible    ${addToCart}
    Click Element    ${addToCart}

      

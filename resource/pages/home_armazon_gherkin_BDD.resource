*** Settings ***
Library                                  SeleniumLibrary 

*** Variables ***
${amazon}                                https://www.amazon.com.br/
${meunu_eletronico}                      xpath=//a[contains(.,'Eletrônicos')]



*** Keywords ***
Dado que estou na home page da Amazon.com.br
        Go To                            ${amazon}
        Wait Until Element Is Visible    ${meunu_eletronico}

Quando acessar o menu "Eletrônicos"
    Click Element                        ${meunu_eletronico}


Então o título da página deve ficar "${titulo}"
    Title Should Be                      ${titulo}

E o texto "${texto}" deve ser exibido na página 
    Wait Until Page Contains             ${texto}

E a categoria "Computadores e Informática" deve ser exibida na página
    Element Should Be Visible     //span[@dir='auto'][contains(.,'Computadores e Informática')] 

Quando pesquisar pelo produto "${Produto}" 
    Input Text    css=input[id="twotabsearchtextbox"]    ${Produto}
    Click Element    css=input[id="nav-search-submit-button"]

E um produto da linha "${Pesquisar}" deve ser mostrado na página 
    Wait Until Element Is Visible    //span[@class='a-color-state a-text-bold'][contains(.,'"${Pesquisar}"')]
    
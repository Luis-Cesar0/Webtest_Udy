*** Settings ***
Library                                  SeleniumLibrary 

*** Variables ***
${amazon}                                https://www.amazon.com.br/
${meunu_eletronico}                      xpath=//a[contains(.,'Eletrônicos')]



*** Keywords ***
Acessar a home page do site Amazon.com.br
        Go To                            ${amazon}
        Wait Until Element Is Visible    ${meunu_eletronico}

Entrar no menu "Eletrônicos"
    Click Element                        ${meunu_eletronico}

Verificar se aparece a frase "${texto}"
    Wait Until Page Contains             ${texto}
Verificar se o título da página fica "${titulo}"
    Title Should Be                      ${titulo}

Verificar se aparece a categoria "Computadores e Informática"
    Element Should Be Visible     //span[@dir='auto'][contains(.,'Computadores e Informática')]   

Digitar o nome de produto "${Produto}" no campo de pesquisa
    Input Text    css=input[id="twotabsearchtextbox"]    ${Produto}
Clicar no botão de pesquisa
    Click Element    css=input[id="nav-search-submit-button"]
Verificar o resultado da pesquisa se estar listando o produto "${Pesquisar}" pesquisado
    Wait Until Element Is Visible    //span[@class='a-color-state a-text-bold'][contains(.,'"${Pesquisar}"')]
    
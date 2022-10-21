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
    Element Should Be Visible     xpath=(//a[@aria-label="Computadores e Informática"])[2]   
    
    
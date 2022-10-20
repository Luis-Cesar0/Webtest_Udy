*** Settings ***
Library                                  SeleniumLibrary 

*** Variables ***
${amazon}                                https://www.amazon.com.br/

*** Keywords ***
 Acessar a home page do site Amazon.com.br
        Go To                            ${amazon}
        Wait Until Element Is Visible    css=a[id="nav-logo-sprites"]

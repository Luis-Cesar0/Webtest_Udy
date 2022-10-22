*** Settings ***
Documentation    essa suite testa o site da Amazon.com.br

Resource         ../resource/main.resource

Test Setup       Abri o navegador
Test Teardown    Fechar o navegador   

*** Test Cases ***
Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste cerifca o menu eletrônicos do site Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

Pesquisa de um Produto
    [Tags]    busca
    [Documentation]    Esse teste verifica a busca de um produto
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
*** Settings ***
Documentation    essa suite testa o site da Amazon.com.br

Resource         ../resource/main.resource

Test Setup       Abri o navegador
Test Teardown    Fechar o navegador   

*** Test Cases ***
Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste cerifca o menu eletrônicos do site Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    Acessar a home page do site Amazon.com.br
#     Entrar no menu "Eletrônicos"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e Informática"

# Pesquisa de um Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se estar listando o produto pesquisado
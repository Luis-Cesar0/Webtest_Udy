*** Settings ***
Documentation    Arquivo principal
Library          SeleniumLibrary

Resource        ../resource/pages/home_armazon.resource
Resource        ../resource/pages/home_armazon_gherkin_BDD.resource

*** Keywords ***
Abri o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador 
    Capture Page Screenshot
    Close Browser
    
    
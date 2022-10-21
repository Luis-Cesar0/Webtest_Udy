*** Settings ***
Documentation    Arquivo principal
Library          SeleniumLibrary

Resource    ../resource/pages/home_armazon.resource

*** Keywords ***
Abri o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador 
    Capture Page Screenshot
    Close Browser
    
    
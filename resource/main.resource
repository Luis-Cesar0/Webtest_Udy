*** Settings ***
Documentation    Arquivo principal
Library          SeleniumLibrary

Resource    ../resource/pages/home_armazon.resource

*** Keywords ***
Abri o navegador
    Open Browser    browser=chrome

Fechar o navegador 
    Close Browser
    Capture Page Screenshot
    
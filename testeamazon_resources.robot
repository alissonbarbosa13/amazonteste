*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}          Chrome
${URL}              https://www.amazon.com.br/
${PESQUISA}         twotabsearchtextbox
${BTN_LUPA}         nav-search-submit-button
${BTN_ADICIONAR}    a-autoid-1-announce
${BTN_CARRINHO}     nav-cart-count


*** Keywords ***
Acessar site da Amazon
    Set Selenium Speed    0.5
    Open Browser    browser=chrome
    Delete All Cookies
    Maximize Browser Window
    Go To    url=${URL}

Pesquisar item
    Set Selenium Speed    0.5
    Input Text    locator=${PESQUISA}    text=B0DCLBBWLV
    Sleep    1
    Click Element    locator=${BTN_LUPA}
    Sleep    2

Checar resultado da pesquisa
    Wait Until Page Contains    text=Notebook Dell Inspiron
    Sleep    1
    Capture Page Screenshot
    Sleep    1

Adicionar item ao carrinho
    Click Element    locator=${BTN_ADICIONAR}
    Sleep    1

Checar item no carrinho
    Set Selenium Speed    0.5
    Click Element    locator=${BTN_CARRINHO}
    Sleep    2
    Wait Until Page Contains    text=Notebook Dell Inspiron
    Capture Page Screenshot

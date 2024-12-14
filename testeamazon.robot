*** Settings ***
Documentation       Esse teste faz a pesquisa de um notebook dell, checa o resultado e adiciona no carrinho.

Resource            testeamazon_resources.robot


*** Test Cases ***
Testar adição de itens no carrinho
    Acessar site da Amazon
    Pesquisar item
    Checar resultado da pesquisa
    Adicionar item ao carrinho
    Checar item no carrinho

***Settings***
Library     Selenium

***Variables***
${URL}      http://automationpractice.com/index.php
${URL}      chrome

***Test Cases***
Cenario 01: Pesquisar produto existente
    Dado que eu estou na pagina home do site
    Quando eu pesquisar pelo produto "Blouse"
    Entao o produto "Blouse" deve ser listado na pagina de resultado da busca

Cenario 02: Pesquisar produto nao existente
    Dado que eu estou na pagina home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Entao a pagina deve exibir a mensagem "No results found for your search "itemNãoExistente""

***Keywords***
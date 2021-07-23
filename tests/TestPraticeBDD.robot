***Settings***
Resource         ../resource/Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

***Variables***
${BROWSER}      chrome
${URL}          http://automationpractice.com


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
Dado que eu estou na pagina home do site        
    Acessar a pagina home do site

Quando eu pesquisar pelo produto "${PRODUTO}" 
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar

Entao o produto "${PRODUTO}" deve ser listado na pagina de resultado da busca
    Conferir se o produto "${PRODUTO}" foi listado no site

Entao a pagina deve exibir a mensagem "${MENSAGEM_ALERTA}" 
    Conferir mensagem de erro "${MENSAGEM_ALERTA}"
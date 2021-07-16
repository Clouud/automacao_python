***Settings***
Library                 SeleniumLibrary 

***Variables***
${BROWSER}              chrome
${URL}                  http://automationpractice.com/index.php

***Keywords***
Abrir navegador
    Open Browser         about:blank   ${BROWSER}   
    
Fechar navegador     
    Close Browser

### Passo-a-Passo
Acessar a pagina home do site
    Go to               http://automationpractice.com/index.php
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Input Text          name=search_query        ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=submit_search
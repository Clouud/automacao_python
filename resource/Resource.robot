***Settings***
Library     SeleniumLibrary 

***Variables***
${BROWSER}      chrome
${URL}          http://automationpractice.com

***Keywords***
Abrir navegador
    Open Browser    about:blank   ${BROWSER}   
    
Fechar navegador     
    Close Browser

### Acoes
Acessar a pagina home do site
    Go to               ${URL}
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Input Text          name=search_query        ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=submit_search

### Conferencias
Conferir se o produto "${PRODUTO}" foi listado no site 
    Wait Until Element Is Visible       css=#center_column > h1    
    Title Should Be                     Search - My Store
    Page Should Contain Image           xpath=//*[@id="center_column"]//*[@src='${URL}/img/p/7/7-home_default.jpg']
    Page Should Contain Link            xpath=//*[@id="center_column"]//a[@class='product-name'][contains(text(),"${PRODUTO}")]

Conferir mensagem de erro "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible       //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be              //*[@id="center_column"]/p[@class='alert alert-warning']  ${MENSAGEM_ALERTA}
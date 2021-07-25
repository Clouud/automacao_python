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

### Adicionar produto ao carrinho
Clicar na imagem do produto
    Click Element        xpath=//*[@id="center_column"]//*[@src='${URL}/img/p/7/7-home_default.jpg']
    
Clicar no botão "Add to cart"
    Click Element       xpath=//*[@id="add_to_cart"]

Clicar no botão "Proceed to checkout"
    Wait Until Element Is Visible      xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Click Element                      xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a

Clicar no botão "Remover"
    Wait Until Element Is Visible      xpath=//*[@id="2_7_0_0"]
    Click Element                      xpath=//*[@id="2_7_0_0"]

Clicar no bot ao "Sign in"
    Wait Until Element Is Visible       xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Click Element                       xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a


Preencher e-mail "${E-mail}"
    Input Text         id=email_create       ${E-mail}
                    

Clicar no botao "Create an account"
    Click Element      id=SubmitCreate


Preencher os campos do cadastro com Mr., Gabriel, Oliveira Garcês, testeqaxpto@gmail.com, 123456, 7, 01, 1991       
    Wait Until Element Is Visible       id=account-creation_form
    Click Element                       id=id_gender1                   
    Input Text                          id=customer_firstname          GABRIEL
    Input Text                          id=customer_lastname           OLIVEIRA GARCÊS
    Input Text                          id=passwd                      123456
    Click Element                       id=uniform-days                
    Select All From List                xpath=//*[@id="days"]/option[8]
    #Click Element                       id=uniform-months   
    #Input Text                          id=months                       01 
   # Click Element                       id=uniform-years
    #Input Text                          id=years                        1991

#Clicar em "Register" para finalizar o cadastro

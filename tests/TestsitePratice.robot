***Settings***
Resource            ../resource/Resource.robot
Test Setup          Abrir navegador
#Test Teardown       Fechar navegador

***Test Cases***
Caso de Teste 01: Pesquisar produto existente
    Acessar a pagina home do site
    Digitar o nome do produto "Blouse" no campo de Pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto nao existente
    Acessar a pagina home do site
    Digitar o nome do produto "itemNãoExistente" no campo de Pesquisa
    Clicar no botão pesquisar
    Conferir mensagem de erro "No results were found for your search "itemNãoExistente""

Caso de Teste 03: Adicionar produto no carrinho
    Acessar a pagina home do site
    Digitar o nome do produto "Blouse" no campo de Pesquisa
    Clicar no botão pesquisar
    Clicar na imagem do produto
    Clicar no botão "Add to cart"
    Clicar no botão "Proceed to checkout"

Caso de Teste 04: Remover produto no carrinho
    Acessar a pagina home do site
    Digitar o nome do produto "Blouse" no campo de Pesquisa
    Clicar no botão pesquisar
    Clicar na imagem do produto
    Clicar no botão "Add to cart"
    Clicar no botão "Proceed to checkout"
    Clicar no botão "Remover"

Caso de Teste 05: Adicionar cliente
    Acessar a pagina home do site
    Clicar no bot ao "Sign in"
    Informe um e-mail valido
    Clicar no botao "Create an account"
    Preencher os campos de dados pessoais: "Gabriel", "Oliveira Garcês", "12356"
    Preencher os campos do endereco: "Rua Jose Correia Gonçalvez", "Suzano", "Arizona", "32420", "United States", "91131-7035"
    Clicar em "Register" para finalizar o cadastro

# ***Keywords***
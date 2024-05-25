*** Settings ***
Resource    ../utils/config.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***

CT001 - Realizar login com sucesso
    Dado que o cliente esta na pagina de login
    Quando preenche o formulario
    E clica no Login
    Entao o usuario deve logar com sucesso

CT002 - Adicionar um produto e verificar o carrinho
    Dado que visito um produto 
    Quando acrescento um produto no carrinho
    Entao verifico o produto no carrinho
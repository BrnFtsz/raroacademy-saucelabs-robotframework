*** Settings ***
Resource    ../../base.robot

*** Variables ***
${OPEN_MENU}                xpath=//android.view.ViewGroup[@content-desc="open menu"]
${MENU_LATERAL_LOGIN}       xpath=//android.view.ViewGroup[@content-desc="menu item log in"]
${INPUT_TEXT_USERNAME}      xpath=//android.widget.EditText[@content-desc="Username input field"]
${INPUT_TEXT_PASSWORD}      xpath=//android.widget.EditText[@content-desc="Password input field"]
${BTN_LOGIN}                xpath=//android.view.ViewGroup[@content-desc="Login button"]
${TITULO_TELA_DE_PRODUTO}   xpath=//android.widget.TextView[@text="Products"]
${PRODUTO_CAMISETA}         xpath=//android.widget.TextView[@text="Test.allTheThings() T-Shirt"]
${ADD_CART}                 xpath=//android.view.ViewGroup[@content-desc="Add To Cart button"]
${CARRINHO}                 xpath=//android.view.ViewGroup[@content-desc="cart badge"]
${CARRINHO_TITULO}          xpath=//android.widget.TextView[@text="My Cart"]
${PRODUTO_LABEL}            xpath=//android.widget.TextView[@content-desc="product label"]
${PROSSEGUIR_CHECKOUT}      xpath=//android.widget.TextView[@text="Proceed To Checkout"]
*** Keywords ***
Dado que o cliente esta na pagina de login
    Espera o elemento e faz o clique    ${OPEN_MENU}
    Espera o elemento e faz o clique    ${MENU_LATERAL_LOGIN}

Quando preenche o formulario
    Espera o elemento e faz o inputtext    ${INPUT_TEXT_USERNAME}    bob@example.com
    Espera o elemento e faz o inputtext    ${INPUT_TEXT_PASSWORD}    10203040

E clica no Login
    Espera o elemento e faz o clique    ${BTN_LOGIN}

Entao o usuario deve logar com sucesso
    Wait Until Element Is Visible    ${TITULO_TELA_DE_PRODUTO}
    Element Should Be Visible        ${TITULO_TELA_DE_PRODUTO}

Dado que visito um produto 
    Swipe By Percent    0    50    0    10    1000
    Espera o elemento e faz o clique    ${PRODUTO_CAMISETA}

Quando acrescento um produto no carrinho
    Espera o elemento e faz o clique    ${ADD_CART}
    Espera o elemento e faz o clique    ${CARRINHO}

Entao verifico o produto no carrinho
    Wait Until Element Is Visible    ${CARRINHO_TITULO}
    Element Should Contain Text    //android.widget.TextView[@content-desc="product label"]    Test.allTheThings() T-Shirt
    Espera o elemento e faz o clique    ${PROSSEGUIR_CHECKOUT}
    Quando preenche o formulario
    E clica no Login
Funcionalidade: Catalogo

  Cenário: Deve ser possivel categorizar por nome
   Dado que estou na pagina de Catalogo
   Quando clico no filtro de ordenação
   E seleciono ordenar por nome ascendente
   Então os produtos devem estar ordenados por nome do menor para o maior


Funcionalidade: Checkout

  Cenário: Deve ser possível visualizar detalhes da compra antes de confirmar a compra
   Dado que o cliente esta na pagina de Checkout
   E existe um produto no carrinho
   Quando o cliente preencher o formulario de endereço com informaçoes validas
   E preencher o formulario do cartão com informaçoes validas
   E clicar para exibir a review
   Então deve exibir as informaçoes do produto, endereço e metodo de pagamento

   
  Cenário: Deve ser possivel realizar o login com sucesso
   Dado que o cliente esta na pagina de login
   Quando preenche o username com "bob@example.com"
   E preenche o password com 10203040
   E clica no login
   Então deve efetuar o login com sucesso

  Cenário: Deve exibir uma mensagem de erro ao realizar o login sem preencher username
   Dado que o cliente esta na pagina de login
   Quando não preenche o username
   E preenche o password com 10203040
   E clica no login
   Então deve exibir uma mensagem de erro informando que o username é obrigatorio

  Cenário: Deve exibir uma mensagem de erro ao realizar o login sem preencher password
   Dado que o cliente esta na pagina de login
   Quando preenche o username com "bob@example.com"
   E clica no login
   Então deve exibir uma mensagem de erro informando que o password é obrigatorio



  Cenário: Deve ser possivel realizar avaliação de um produto
  Cenário: Deve desabilitar o botão de adicionar ao carrinho quando a quantidade estiver zerada
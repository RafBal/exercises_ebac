#language: pt

Funcionalidade: configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página de um produto da loja

Cenário: Escolha válida
Quando eu clicar num dos botões de tamanho
E clicar num dos botões de cor
E escolher a quantidade menor ou igual a 10 produtos (e pelo menos um)
Então deve permitir inserir no carrinho de compras

Cenário: Quantidade exagerada
Quando eu clicar num dos botões de tamanho
E clicar num dos botões de cor
E escolher a quantidade maior que 10 produtos
Então deve exibir uma mensagem de alerta: "No máximo dez produtos podem ser comprados de uma vez só"
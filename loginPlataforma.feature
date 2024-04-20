#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de autenticação do portal EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar usuário "joaquim@ebacshop.com.br"
E a senha "Clementin@86"
Então deve me direcionar à tela de checkout

Cenário: Usuário inexistente
Quando eu digitar o usuário "zeninguem@ebac.com.br"
E a senha "ninguemaqui"
Então deve exibir uma mensagem de alerta: "Usuário inexistente"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "joaquim@ebacshop.com.br"
E a senha "clementin@867"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"


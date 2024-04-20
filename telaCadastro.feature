            #language: pt

            Funcionalidade: cadastrar cliente
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout da loja sem ter cadastro na mesma

            Cenário: Cadastro válido
            Quando eu preencher todos os campos obrigatórios com dados válidos
            Então poderei finalizar minha compra

            Cenário: campo obrigatório faltando
            Quando eu preencher quase todos os campos obrigatórios
            Então deve exibir uma mensagem: "Faltou preencher pelo menos um campo obrigatório"

            Cenário: formato errado de e-mail
            Quando eu digitar usuário "joaquimebacshop.com.br"
            Então deve exibir uma mensagem: "Formato inválido de e-mail"

            Esquema do Cenário: Esquecer de preencher um campo obrigatório
            Quando eu não preencher o <campo>
            Então deve exibir a <mensagem> de falha

            Exemplos:
            | campo obrigatório faltante | mensagem                               |
            | Nome                       | "Faltou digitar o nome."               |
            | Sobrenome                  | "Faltou digitar o sobrenome."          |
            | País                       | "Faltou digitar o país."               |
            | Endereço                   | "Faltou digitar o endereço."           |
            | Cidade                     | "Faltou digitar a cidade."             |
            | CEP                        | "Faltou digitar o CEP."                |
            | Telefone                   | "Faltou digitar o telefone."           |
            | Endereço de e-mail         | "Faltou digitar o endereço de e-mail." |


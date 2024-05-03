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
            | Nome                       | Sobrenome                  | País                      | Endereço                   | Cidade                     | CEP                        | Telefone                   | Endereço de e-mail         | Mensagem de resultado                 |
            |                            | Cortella                   | Portugal                  | 330, Rua de São Pedro      | Braga                      | 123456                     | 12345679                   | cortela@outlook.com        | "Faltou digitar o nome."              |
            | Roberta                    |                            | Brasil                    | 29, Rua dos Loures         | Macapá                     | 489784894                  | 971346861                  | roberta@gmail.com          | "Faltou digitar o sobrenome.          |
            | William                    | Lane                       |                           | 56, Green Channel Street   | Bristol                    | 48948948                   | 251879134                  | lane@bill.co               | "Faltou digitar o país."              |
            | Irma                       | Sikorová                   | Chéquia                   |                            | Pilsen                     | 3697                       | 96631441                   | irma@gov.com.cz            | "Faltou digitar o endereço."          |
            | Emilia                     | Wagner                     | Áustria                   | 76, Gregor Straße          |                            | 64895214                   | 798787731                  | wagneremilia@yahoo.com     | "Faltou digitar a cidade."            |
            | Alain                      | Boeres                     | Luxemburgo                | 5, Rue de l'Europe         | Differdange                |                            | 88861796                   | alain@gmail.com            | "Faltou digitar o CEP."               |
            | Rik                        | Pollet                     | Bélgica                   | 78, Rue St. Sébastian      | Arlon                      | 9923147                    |                            | pollet@uni.be              | "Faltou digitar o telefone."          |
            | Axelle                     | Bossuet                    | França                    | 12, Rue de l'Hopital jaune | Marselle                   | 1687974                    | 94489145678                |                            | "Faltou digitar o endereço de e-mail."|


#language: pt

Funcionalidade: Cadastro de Usuários
        Cenário: Cadastro de usuário com sucesso
            Dado que acesso a página de Cadastro
             Quando submeto o meu cadastro com:
                  | usuario        | username |
                  | senha          | teste123 |
                  | confirma_senha | teste123 |
             Então devo ser redirecionado para a tela de login

        Cenário: Usuário já cadastrado
            Dado que acesso a página de Cadastro
             Quando submeto o meu cadastro com:
                  | usuario        | testeamanda |
                  | senha          | teste123    |
                  | confirma_senha | teste123    |
             Então devo ver a mensagem: "Usuário já cadastrado"

        Cenário: Senhas diferentes
            Dado que acesso a página de Cadastro
             Quando submeto o meu cadastro com:
                  | usuario        | testeotheruser |
                  | senha          | teste123       |
                  | confirma_senha | teste321       |
             Então deve apresentar a mensagem: "Senhas não combinam"

        Esquema do Cenário: Tentativa de Cadastro
            Dado que acesso a página de Cadastro
             Quando submeto o meu cadastro com:
                  | usuario        | <usuario>        |
                  | senha          | <senha>          |
                  | confirma_senha | <confirma_senha> |
             Então deve exibir o seguinte css: ".alert-validate"

        Exemplos:
                  | usuario        | senha    | confirma_senha |
                  |                | teste123 | teste123       |
                  | testeotheruser |          | teste123       |
                  | testeotheruser | teste123 |                |
                  | testeotheruser |          |                |
                  |                |          | teste123       |
                  |                | teste123 |                |
                  |                |          |                |

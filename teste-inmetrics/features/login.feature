#language: pt

Funcionalidade: Login

        Cenário: Login do usuário com sucesso
            Dado que acesso a página Login
             Quando submeto minhas credenciais com: "amandarb" e "teste123"
             Então devo ser redirecionado para a área logada
        
        Esquema do Cenário: Tentativa de login
            Dado que acesso a página Login
             Quando submeto minhas credenciais com: "<usuario>" e "<senha>"
             Então devo ver a mensagem de erro: "ERRO! Usuário ou Senha inválidos"

        Exemplos:
                  | usuario  | senha    |
                  | amanda   | teste123 |
                  | amandarb | teste    |
                  | amanda   | teste    |

        Esquema do Cenário: Campos não preenchidos
            Dado que acesso a página Login
             Quando submeto minhas credenciais com: "<usuario>" e "<senha>"
             Então deve exibir o seguinte css: ".alert-validate"

        Exemplos:
                  | usuario | senha |
                  | amanda  |       |
                  |         | teste |
                  |         |       |
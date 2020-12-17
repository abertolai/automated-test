#language: pt
Funcionalidade: Cadastro de Funcionario

        Contexto: Login
        * Login com "amandarb" e "teste123"

        Cenário: Cadastro de funcionário com sucesso
            Dado que acesso o cadastro de funcionario
             Quando submeto o cadastro do funcionario com:
                  | nome             | Teste Funcionário 2 |
                  | cpf              | 444.874.830-85      |
                  | sexo             | Feminino            |
                  | admissao         | 12/12/2000          |
                  | cargo            | Analista de Dados   |
                  | salario          | 5000.00             |
                  | tipo_contratacao | CLT                 |
             Então deverá apresentar a seguinte mensagem: "SUCESSO! Usuário cadastrado com sucesso"
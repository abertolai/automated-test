#language: pt
Funcionalidade: Editar dados de um funcionário

        Contexto: Login
        * Login com "amandarb" e "teste123"

        Cenário: Editar dados de um funcionário com sucesso
            Dado que pesquiso pelo funcionário: "Teste Funcionário 2"
              E abro a tela de alteração de dados desse funcionario
             Quando submeto os dados do funcionario com:
                  | nome             | Teste Funcionário Alterado 2 |
                  | cpf              | 590.828.730-01               |
                  | sexo             | Masculino                    |
                  | admissao         | 12/12/2010                   |
                  | cargo            | Analista de Dados Senior     |
                  | salario          | 10000.00                     |
                  | tipo_contratacao | PJ                           |
             Então deverá apresentar a seguinte mensagem: "SUCESSO! Informações atualizadas com sucesso"
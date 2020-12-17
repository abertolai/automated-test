#language: pt
Funcionalidade: Excluir um funcionário

        Contexto: Login
        * Login com "amandarb" e "teste123"

        Cenário: Excluir um funcionário com sucesso
            Dado que pesquiso pelo funcionário: "Teste Funcionário Alterado 2"
              E retorna apenas um funcionário
             Quando clico no botão excluir
             Então deverá apresentar a seguinte mensagem: "SUCESSO! Funcionário removido com sucesso"
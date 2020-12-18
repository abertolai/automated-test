#language: pt
@webservice
Funcionalidade: Cadastro, alteração e listagem de empregados

        Cenário: Cadastrar um empregado com sucesso
            Dado o endereço da API padrão
             Quando realizar uma requisição para cadastrar um empregado
             Então a API ira retornar os dados do cadastro respondendo o codigo 202


        Cenário: Listar empregado cadastrado
            Dado o endereço da API padrão
             Quando realizar uma requisição para consultar um empregado cadastrado
             Então a API ira retornar os dados do cadastro respondendo o codigo 202

        Cenário: Alterar empregado
            Dado o endereço da API padrão
             Quando realizar uma requisição para alterar os dados de um empregado
             Então a API ira retornar os dados do cadastro respondendo o codigo 202

        Cenário: Listar todos os empregados
            Dado o endereço da API padrão
             Quando realizar uma requisição para listar todos os empregados
             Então a API ira todos os dados dos empregados cadastrados respondendo o codigo 200
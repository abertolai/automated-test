#language: pt
@webservice
Funcionalidade: Cadastro, alteração e listagem de empregados

        Cenário: Cadastro de Empregado com sucesso
            Dado o endereço da API padrão
             Quando realizar uma requisição para cadastrar um empregado com os seguintes dados:
                  | admissao        | <admissao>        |
                  | cargo           | <cargo>           |
                  | comissao        | <comissao>        |
                  | cpf             | <cpf>             |
                  | departamentoId  | <departamentoId>  |
                  | nome            | <nome>            |
                  | salario         | <salario>         |
                  | sexo            | <sexo>            |
                  | tipoContratacao | <tipoContratacao> |
             Então a API ira retornar o codigo de sucesso <codigo>

        Exemplos:
                  | admissao   | cargo    | comissao | cpf            | departamentoId | nome        | salario   | sexo | tipoContratacao | codigo |
                  | 12/12/2020 | Analista | 1.000,00 | 777.022.780-13 | 1              | Teste API 2 | 10.000,00 | f    | clt             | 202    |


        Cenário: Tentativa Cadastro de Empregado
            Dado o endereço da API padrão
             Quando realizar uma requisição para cadastrar um empregado com dados inválidos:
                  | admissao        | <admissao>        |
                  | cargo           | <cargo>           |
                  | comissao        | <comissao>        |
                  | cpf             | <cpf>             |
                  | departamentoId  | <departamentoId>  |
                  | nome            | <nome>            |
                  | salario         | <salario>         |
                  | sexo            | <sexo>            |
                  | tipoContratacao | <tipoContratacao> |
             Então a API ira retornar o codigo <codigo>

        Exemplos:
                  | admissao   | cargo    | comissao | cpf         | departamentoId | nome        | salario   | sexo | tipoContratacao | codigo |
                  | 12/12/2020 | Analista | 1.000,00 | 77702278013 | 1              | Teste API 2 | 10.000,00 | f    | clt             | 400    |


        Cenário: Listar empregado cadastrado
            Dado o endereço da API padrão
             Quando realizar uma requisição para consultar um empregado cadastrado
             Então a API ira retornar os dados do empregado e o codigo de sucesso 202

        Cenário: Alterar empregado
            Dado o endereço da API padrão
             Quando realizar uma requisição para alterar os dados de um empregado
                  | admissao        | <admissao>        |
                  | cargo           | <cargo>           |
                  | comissao        | <comissao>        |
                  | cpf             | <cpf>             |
                  | departamentoId  | <departamentoId>  |
                  | nome            | <nome>            |
                  | salario         | <salario>         |
                  | sexo            | <sexo>            |
                  | tipoContratacao | <tipoContratacao> |
             Então a API ira retornar os dados do empregado e o codigo de sucesso <codigo>
        Exemplos:
                  | admissao   | cargo       | comissao | cpf            | departamentoId | nome        | salario   | sexo | tipoContratacao | codigo |
                  | 12/12/2020 | Programador | 1.000,00 | 777.022.780-13 | 1              | Teste API 2 | 10.000,00 | f    | clt             | 202    |

        Cenário: Listar todos os empregados
            Dado o endereço da API padrão
             Quando realizar uma requisição para listar todos os empregados
             Então a API ira todos os dados dos empregados cadastrados respondendo o codigo 200
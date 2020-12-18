Dado("o endereço da API padrão") do
end

Quando("realizar uma requisição para cadastrar um empregado") do
  $response = @webservice.postCadastrarEmpregado
end

Então("a API ira retornar os dados do cadastro respondendo o codigo {int}") do |code|
  expect($response.code).to eq(code)

  log("Response code: #{$response.code}")
  #($response.body)
  log("ID Empregado : #{$response["empregadoId"]}")
  log("Nome : #{$response["nome"]}")
  log("Sexo : #{$response["sexo"]}")
  log("CPF : #{$response["cpf"]}")
  log("Cargo : #{$response["cargo"]}")
  log("Admissao : #{$response["admissao"]}")
  log("Salario : #{$response["salario"]}")
  log("Comissao : #{$response["comissao"]}")
  log("Tipo Contratacao : #{$response["tipoContratacao"]}")

  $id = $response["empregadoId"]
end

Quando("realizar uma requisição para alterar os dados de um empregado") do
  $response = @webservice.putAlterarEmpregado($id)
end

Quando("realizar uma requisição para consultar um empregado cadastrado") do
  $response = @webservice.getListarEmpregadoCadastrado($id)
end

Quando("realizar uma requisição para listar todos os empregados") do
  $response = @webservice.getListarTodosEmpregados
end

Então("a API ira todos os dados dos empregados cadastrados respondendo o codigo {int}") do |code|
  expect($response.code).to eq(code)
  expect(($response[0]["empregadoId"]).class).to eq(Integer)
end

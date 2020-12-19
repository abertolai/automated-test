Dado("o endereço da API padrão") do
end

Quando("realizar uma requisição para cadastrar um empregado com os seguintes dados:") do |table|
  empregado = table.rows_hash
  body = compose_body(empregado)

  $response = @webservice.postCadastrarEmpregado(body)
end

Então("a API ira retornar o codigo de sucesso {int}") do |code|
  expect($response.code).to eq(code)

  log("Response code: #{$response.code}")
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

Quando("realizar uma requisição para cadastrar um empregado com dados inválidos:") do |table|
  empregado = table.rows_hash
  body = compose_body(empregado)

  $response = @webservice.postCadastrarEmpregado(body)
end

Então("a API ira retornar o codigo {int}") do |code|
  expect($response.code).to eq(code)
end

Quando("realizar uma requisição para alterar os dados de um empregado") do |table|
  empregado = table.rows_hash
  body = compose_body(empregado)

  $response = @webservice.putAlterarEmpregado($id, body)
end

Quando("realizar uma requisição para consultar um empregado cadastrado") do
  $response = @webservice.getListarEmpregadoCadastrado($id)
end

Quando("realizar uma requisição para listar todos os empregados") do
  $response = @webservice.getListarTodosEmpregados
end

Então("a API ira todos os dados dos empregados cadastrados respondendo o codigo {int}") do |code|
  expect($response.code).to eq(code)
  $response.parsed_response.each do |item|
    expect(item["empregadoId"]).to be_a_kind_of(Integer)
    expect(item["nome"]).to be_a_kind_of(String)
    expect(item["sexo"]).to be_a_kind_of(String)
    expect(item["cpf"]).to be_a_kind_of(String)
    expect(item["cargo"]).to be_a_kind_of(String)
    expect(item["admissao"]).to be_a_kind_of(String)
    expect(item["salario"]).to be_a_kind_of(String)
    expect(item["comissao"]).to be_a_kind_of(String)
    expect(item["tipoContratacao"]).to be_a_kind_of(String)
  end
end

Então("a API ira retornar os dados do empregado e o codigo de sucesso {int}") do |code|
  expect($response.code).to eq(code)
  expect($response["empregadoId"]).to be_a_kind_of(Integer)
  expect($response["nome"]).to be_a_kind_of(String)
  expect($response["sexo"]).to be_a_kind_of(String)
  expect($response["cpf"]).to be_a_kind_of(String)
  expect($response["cargo"]).to be_a_kind_of(String)
  expect($response["admissao"]).to be_a_kind_of(String)
  expect($response["salario"]).to be_a_kind_of(String)
  expect($response["comissao"]).to be_a_kind_of(String)
  expect($response["tipoContratacao"]).to be_a_kind_of(String)
end

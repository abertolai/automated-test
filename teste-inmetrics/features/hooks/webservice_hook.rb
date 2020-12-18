Before "@webservice" do
  @admissao = Faker::Date.between(from: "2000-09-23", to: "2000-09-25")
  @cargo = Faker::Company.profession
  @comissao = Faker::Number.decimal(l_digits: 3, r_digits: 2)
  @cpf = Faker::CPF.number

  body = {
    "admissao": @admissao.strftime("%d/%m/%Y"),
    "cargo": @cargo,
    "comissao": "1.000,00",
    "cpf": "777.022.780-13",
    "departamentoId": 1,
    "nome": "Teste API 1",
    "salario": "10.000,00",
    "sexo": "f",
    "tipoContratacao": "clt",
  }
  @body = JSON.generate(body)

  @webservice = Webservice.new(@body)
end

Dado("Login com {string} e {string}") do |usuario, senha|
  visit "/"
  login_com(usuario, senha)
end

Dado("que acesso o cadastro de funcionario") do
  link_novo_funcionario.click
end

Quando("submeto o cadastro do funcionario com:") do |table|
  func = table.rows_hash

  #nome
  txt_nome.set func[:nome]
  #cpf
  txt_cpf.set func[:cpf]
  #sexo
  sel_sexo(func[:sexo]).select_option
  #admissao
  dt_admissao.set func[:admissao]
  #cargo
  txt_cargo.set func[:cargo]
  #salario
  txt_salario.set func[:salario]

  tpCont = func[:tipo_contratacao]

  if (tpCont == "CLT")
    rd_clt.click
  else
    rd_pj.click
  end

  btn_submit.click
end

Então("deverá apresentar a seguinte mensagem: {string}") do |expect_message|
  expect(alert_sucesso.text).to match expect_message
  expect(page).to have_css tab_todos_funcionarios
end

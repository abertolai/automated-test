Dado("que acesso a página de Cadastro") do
  visit "/"
  botao_cadastrar.click
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash

  if user[:usuario] == "username"
    user[:usuario] = Time.now.to_i
  end

  text_usuario.set user[:usuario]
  text_senha.set user[:senha]
  text_confirma_senha.set user[:confirma_senha]

  click_on "Cadastrar"
end

Então("devo ser redirecionado para a tela de login") do
  expect(page).to have_css elemento_login
end

Então("devo ver a mensagem: {string}") do |expect_message|
  alert = msg_usr_cadastrado
  expect(alert.text).to eql expect_message
end

Então("deve exibir o seguinte css: {string}") do |expect_css|
  expect(page).to have_css expect_css
end

Então("deve apresentar a mensagem: {string}") do |expect_message|
  alert = msg_senhas_nao_combinam
  expect(alert.text).to eql expect_message
end

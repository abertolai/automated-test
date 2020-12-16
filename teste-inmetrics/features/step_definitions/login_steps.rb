Dado("que acesso a página Login") do
  visit "/"
end

Quando("submeto minhas credenciais com: {string} e {string}") do |usuario, senha|
  login_com(usuario, senha)
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css tab_todos_funcionarios
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  expect(alert_usr_senha_invalidos.text).to match expect_message
end

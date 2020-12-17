Dado("retorna apenas um funcionário") do
  page.should have_css(tab_funcionarios, :count => 2)
end

Quando("clico no botão excluir") do
  btn_excluir.click
end

Dado("que pesquiso pelo funcionário: {string}") do |pesq_func|
  label_pesquisa_func.set pesq_func
end

Dado("abro a tela de alteração de dados desse funcionario") do
  btn_editar_func.click
end

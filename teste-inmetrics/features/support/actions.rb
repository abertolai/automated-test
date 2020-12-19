module Actions
  def login_com(usuario, senha)
    txt_usuario_login.set usuario
    txt_senha_login.set senha
    click_on "Entre"
  end

  def compose_body(empregado)
    body = {
      "admissao": empregado[:admissao],
      "cargo": empregado[:cargo],
      "comissao": empregado[:comissao],
      "cpf": empregado[:cpf],
      "departamentoId": empregado[:departamentoId],
      "nome": empregado[:nome],
      "salario": empregado[:salario],
      "sexo": empregado[:sexo],
      "tipoContratacao": empregado[:tipoContratacao],
    }

    return JSON.generate(body)
  end
end

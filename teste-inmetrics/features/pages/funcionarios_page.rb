module FuncionariosPageObjects
  def tab_todos_funcionarios
    "#tabela_wrapper"
  end

  def link_novo_funcionario
    find(:xpath, "//a[@href='/empregados/new_empregado']")
  end

  #textos
  def txt_nome
    find("#inputNome")
  end

  def txt_cpf
    find("#cpf")
  end

  def txt_cargo
    find("#inputCargo")
  end

  def txt_salario
    find("#dinheiro")
  end

  #datas
  def dt_admissao
    find("#inputAdmissao")
  end

  #radio_button
  def rd_clt
    find("#clt")
  end

  def rd_pj
    find("#pj")
  end

  #selected_option
  def sel_sexo(valor)
    find("#slctSexo").find(:option, valor)
  end

  #botões
  def btn_submit
    find("input[type=submit")
  end

  #alerts
  def alert_sucesso
    find("[role='alert']")
  end
end

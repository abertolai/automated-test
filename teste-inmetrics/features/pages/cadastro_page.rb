module CadastroPageObjects
  #botões
  def botao_cadastrar
    find("[class='txt2 bo1']")
  end

  #textos
  def text_usuario
    find("input[name*=username]")
  end

  def text_senha
    find("input[name=pass]")
  end

  def text_confirma_senha
    find("input[name=confirmpass]")
  end

  #mensagens
  def msg_usr_cadastrado
    find("[class='p-t-10 p-b-1']").find("[class='container-login100-form-btn m-t-17 text-center']")
  end

  def msg_senhas_nao_combinam
    first("[class='p-t-13 p-b-1']").find("[class='container-login100-form-btn m-t-17 text-center']")
  end
end

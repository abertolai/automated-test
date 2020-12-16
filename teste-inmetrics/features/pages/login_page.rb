module LoginPageObjects
  #elementos
  def elemento_login
    "[class='container-login100']"
  end

  #textos
  def txt_usuario_login
    find("input[name*=username]")
  end

  def txt_senha_login
    find("input[name=pass]")
  end

  #alerts
  def alert_usr_senha_invalidos
    find("[role='alert']")
  end
end

module Actions
  def login_com(usuario, senha)
    txt_usuario_login.set usuario
    txt_senha_login.set senha
    click_on "Entre"
  end
end

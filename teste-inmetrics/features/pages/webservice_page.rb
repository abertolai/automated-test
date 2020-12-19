class Webservice
  include HTTParty
  require_relative "../hooks/webservice_hook"
  base_uri "https://inm-api-test.herokuapp.com/empregado"

  def initialize(options)
    @options = options
  end

  def postCadastrarEmpregado(body)
    @body = { :body => body }
    @options.merge!(@body)
    self.class.post("/cadastrar", @options)
  end

  def putAlterarEmpregado(id, body)
    @body = { :body => body }
    @options.merge!(@body)
    self.class.put("/alterar/#{id}", @options)
  end

  def getListarEmpregadoCadastrado(id)
    self.class.get("/list/#{id}", @options)
  end

  def getListarTodosEmpregados
    self.class.get("/list_all/", @options)
  end
end

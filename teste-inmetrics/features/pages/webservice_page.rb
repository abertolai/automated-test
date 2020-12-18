class Webservice
  include HTTParty
  require_relative "../hooks/webservice_hook"
  base_uri "https://inm-api-test.herokuapp.com/empregado"

  def initialize(body)
    @auth = { :username => "inmetrics", :password => "automacao" }
    @options = { :headers => { "Content-Type" => "application/json" },
                 :body => body,
                 :basic_auth => @auth }
    @options2 = { :headers => { "Content-Type" => "application/json" },
                  :basic_auth => @auth }
  end

  def postCadastrarEmpregado
    self.class.post("/cadastrar", @options)
  end

  def putAlterarEmpregado(id)
    self.class.put("/alterar/#{id}", @options)
  end

  def getListarEmpregadoCadastrado(id)
    self.class.get("/list/#{id}", @options2)
  end

  def getListarTodosEmpregados
    self.class.get("/list_all/", @options2)
  end
end

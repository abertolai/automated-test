require "selenium-webdriver"
require "rspec"
require "capybara"
require "capybara/cucumber"

require_relative "actions"
require_relative "../pages/cadastro_page"
require_relative "../pages/login_page"
require_relative "../pages/funcionarios_page"
#require "httparty"

World(Actions)
World(CadastroPageObjects)
World(LoginPageObjects)
World(FuncionariosPageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://www.inmrobo.tk/accounts/login"
end

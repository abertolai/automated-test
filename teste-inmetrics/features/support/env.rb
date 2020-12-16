require "selenium-webdriver"
require "rspec"
require "capybara"
require "capybara/cucumber"
require_relative "../pages/cadastro_page"
require_relative "../pages/login_page"
#require "httparty"
World(CadastroPageObjects)
World(LoginPageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://www.inmrobo.tk/accounts/login"
end

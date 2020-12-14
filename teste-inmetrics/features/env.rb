require "selenium-webdriver"
require "rspec"
require "capybara"
require "capybara/cucumber"
#require "httparty"


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

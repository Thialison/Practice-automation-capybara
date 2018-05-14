require 'rspec'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require 'faker'
require 'selenium-webdriver'

SITE = (YAML.load_file("./features/fixture/site.yml"))
# https://github.com/teamcapybara/capybara#key-benefits
# Definir browser para rodar os testes
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome) 
end

#Configurações do Capybara
Capybara.default_driver = :selenium
Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 15

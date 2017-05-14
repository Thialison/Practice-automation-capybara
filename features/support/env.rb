require 'rspec'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'

include Capybara::DSL


INF = (YAML.load_file('./features/fixture/massa.yml'))
# https://github.com/teamcapybara/capybara#key-benefits
# Definir browser para rodar os testes
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome) 
end

#Configurações do Capybara
Capybara.current_driver = :selenium
Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 15

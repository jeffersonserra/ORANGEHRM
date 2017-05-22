#subir as gems informada na memoria
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'rake'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Configurando o driver padrão
Capybara.default_driver = :selenium

#timeout da execução
Capybara.default_max_wait_time = 3

#Maximizar a tela do navegador
Capybara.page.driver.browser.manage.window.maximize
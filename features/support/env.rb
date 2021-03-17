# frozen_string_literal: true

# chamando as bibliotecas básicas para execução do cenário
require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
# usei o pry para debugar o código
require 'pry'
# chamando o page_helpers para facilitar a chamada das classes e não ter que instanciar as classes dentro dos steps
require_relative 'page_helpers.rb'

World(Pages)

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  # config.app_host = 'https://www.fleury.com.br/'
  config.default_max_wait_time = 18
  Capybara.page.driver.browser.manage.window.maximize
end

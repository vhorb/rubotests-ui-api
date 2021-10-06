# frozen_string_literal: true

require 'capybara/cucumber'
require 'rest-client'
require 'rspec'
require 'webdrivers'
require 'site_prism'
require_relative '../lib/pages/todo_page'

# Dir[Dir.pwd + "/lib/**/*.rb"].each { |f| require_relative f }

Capybara.register_driver :context_selenium_chrome do |app|
  chrome_args  = %w[window-size=1920,1080]
  chrome_args += %w[headless disable-gpu no-sandbox disable-dev-shm-usage] # if APP_CONFIG.dig('headless')
  chrome_prefs = { 'download.default_directory': "#{Dir.pwd}/tmp" }

  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    'goog:chromeOptions': { args: chrome_args, prefs: chrome_prefs }
  )
  Capybara::Selenium::Driver.new app,
                                 browser: :chrome,
                                 desired_capabilities: capabilities
end

# Available drivers: :rack_test, :selenium, :selenium_chrome, :selenium_chrome_headless, :chrome

Capybara.default_driver    = :context_selenium_chrome
Capybara.javascript_driver = :context_selenium_chrome

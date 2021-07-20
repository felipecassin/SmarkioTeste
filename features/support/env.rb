require 'rspec'
require 'capybara/cucumber'
require 'pry'
require 'yaml'
require 'selenium-webdriver'


EL = YAML.load_file('data/elements.yml')
DATA = YAML.load_file('data/data.yml')


$report_title = "Data: #{Time.now.strftime("%d-%m")}, Hora: #{Time.now.strftime("%H-%M")}"


if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome
    Capybara::Selenium::Driver.new(app, browser: :chrome, switches: [''])
  end

  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
elsif ENV['chrome_headless']
  Capybara.default_driver = :chrome_headless
  Capybara.register_driver :chrome_headless do |app|
    Capybara::Selenium::Driver.new(app,
                                   browser: :chrome,
                                   switches: ['--incognito',
                                              '--headless',
                                              'disable-gpu',
                                              'window-size=1280x720'])
  end
elsif ENV['firefox']
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
elsif ENV['ie']
  Capybara.default_driver = :ie
  Capybara.register_driver :ie do |app|
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  end
else
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome
    Capybara::Selenium::Driver.new(app, browser: :chrome, switches: ['--incognito'])
  end
end

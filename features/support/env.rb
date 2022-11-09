#aqui defino tudo que sera usado na execução, aquilo que é requerido ou seja dependencias

require 'em/pure_ruby' if not defined?(EventMachine)
require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'appium_lib_core'
require 'fileutils'
require 'pry'
require 'report_builder'
#require 'faker'

#screen_helper global no projeto
require_relative "screen_helper"
require_relative 'utils.rb'
World(Screens)
World(Utils)

#espera explicita
$wait = Selenium::WebDriver::Wait.new(timeout: 220)

#limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

#define as capabilities
caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true

#instancia novo driver do appium
Appium::Driver.new(caps, true)

#promove seus metodos como globais no projeto
Appium.promote_appium_methods Object

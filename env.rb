$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "./", "./"))

require 'pages/landing_page'
require 'pages/fund_profile_page'
require 'watir-webdriver'
# require 'test-suites/demo_spec'
# require 'test-suites/*'

# Dir["pages/*.rb"].each {|file| require file }
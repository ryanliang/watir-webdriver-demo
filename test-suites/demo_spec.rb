$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "../", "./"))

require 'minitest/spec'
require 'env'

browser = Watir::Browser.new :firefox
lp = LandingPage.new(browser, true)
lp.search_fund_with("028")
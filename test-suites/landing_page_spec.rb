$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "../", "./"))

# require 'minitest/spec'
require "minitest/autorun"
require "minitest/assertions"
require 'env'


describe "MFC Public Web" do
  before do    
    @browser = Watir::Browser.new :firefox
  end

  describe LandingPage do
    before do 
      @landing_page = LandingPage.new(@browser, true)
    end

    it "is loaded successfully" do
      assert_equal @browser.title, "Mackenzie Investments | Home"
    end

    it "has fund code search field" do
      assert @landing_page.fund_code?
    end

    it "has the search button enabled" do
      assert @landing_page.find?
    end

    it "has the list all button enable" do
      assert @landing_page.list_all?
    end

    it "is able to find Mutual Fund MFC028" do
      @landing_page.search_fund_with('028')
      fund_profile_page = FundProfilePage.new(@browser)
      fund_profile_page.fund_name.must_match "MACKENZIE CANADIAN LARGE CAP DIVIDEND & GROWTH FUND SERIES F"
    end
  end

  after do 
    @browser.close
  end

end

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

    it "should be loaded successfully" do      
      assert_equal @browser.title, "Mackenzie | Home"
    end

    it "should be have fund code search field" do
      assert @landing_page.fund_code?
    end

    it "should have the search button enable" do
      assert @landing_page.find?
    end

    it "should have the list all button enable" do
      assert @landing_page.list_all?
    end

    it "should be able to find Mutual Fund MFC028" do
      assert @landing_page.loaded?
      
      @landing_page.search_fund_with('028')
      fund_profile_page = FundProfilePage.new(@browser)
      
      assert fund_profile_page.loaded?

      fund_profile_page.fund_name.must_match "MACKENZIE CANADIAN LARGE CAP DIVIDEND & GROWTH FUND SERIES F"
    end
  end

  after do 
    @browser.close
  end

end

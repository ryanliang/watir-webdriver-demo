require 'page-object'

class LandingPage
  include PageObject

  page_url  "http://www.mackenzieinvestments.com/"

  text_field(:fund_code, name: "code" )
  button(:find, name: "Submit" )

  def search_fund_with(code)
    self.fund_code = code
    find
  end

end
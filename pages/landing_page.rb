require 'page-object'

class LandingPage
  include PageObject

  page_url  "http://www.mackenzieinvestments.com/"

  text_field(:fund_code, name: "code" )
  button(:find, name: "Submit" )
  button(:list_all, name: "ListAll" )
  span(:breadcrumb, class: "breadcrumbs")

  def search_fund_with(code)
    self.fund_code = code
    find
  end

  def list_all_funds
    list_all
  end

  def loaded?
    breadcrumb == "Mackenzie | Home"
  end

end
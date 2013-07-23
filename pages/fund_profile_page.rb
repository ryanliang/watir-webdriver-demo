require 'page-object'

class FundProfilePage
  include PageObject

  h4(:fund_name)
  span(:breadcrumb, class: "breadcrumbs", index: 0)

  def get_fund_name
  	fund_name
  end

  def loaded?
    breadcrumb == "Mackenzie | Fund Profile"
  end
end
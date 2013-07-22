require 'page-object'

class FundProfilePage
  include PageObject

  h4(:fund_name)

  def get_fund_name
  	fund_name
  end

end
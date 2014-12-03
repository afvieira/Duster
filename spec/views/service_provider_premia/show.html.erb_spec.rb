require 'rails_helper'

RSpec.describe "service_provider_premia/show", :type => :view do
  before(:each) do
    @service_provider_premium = assign(:service_provider_premium, ServiceProviderPremium.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

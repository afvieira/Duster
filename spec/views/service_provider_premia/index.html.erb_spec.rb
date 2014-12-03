require 'rails_helper'

RSpec.describe "service_provider_premia/index", :type => :view do
  before(:each) do
    assign(:service_provider_premia, [
      ServiceProviderPremium.create!(),
      ServiceProviderPremium.create!()
    ])
  end

  it "renders a list of service_provider_premia" do
    render
  end
end

require 'rails_helper'

RSpec.describe "service_provider_premia/edit", :type => :view do
  before(:each) do
    @service_provider_premium = assign(:service_provider_premium, ServiceProviderPremium.create!())
  end

  it "renders the edit service_provider_premium form" do
    render

    assert_select "form[action=?][method=?]", service_provider_premium_path(@service_provider_premium), "post" do
    end
  end
end

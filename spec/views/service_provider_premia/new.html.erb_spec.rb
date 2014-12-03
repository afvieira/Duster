require 'rails_helper'

RSpec.describe "service_provider_premia/new", :type => :view do
  before(:each) do
    assign(:service_provider_premium, ServiceProviderPremium.new())
  end

  it "renders new service_provider_premium form" do
    render

    assert_select "form[action=?][method=?]", service_provider_premia_path, "post" do
    end
  end
end

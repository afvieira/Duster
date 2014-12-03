require 'rails_helper'

RSpec.describe "service_providers/edit", :type => :view do
  before(:each) do
    @service_provider = assign(:service_provider, ServiceProvider.create!())
  end

  it "renders the edit service_provider form" do
    render

    assert_select "form[action=?][method=?]", service_provider_path(@service_provider), "post" do
    end
  end
end

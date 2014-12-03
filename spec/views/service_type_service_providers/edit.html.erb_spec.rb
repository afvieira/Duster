require 'rails_helper'

RSpec.describe "service_type_service_providers/edit", :type => :view do
  before(:each) do
    @service_type_service_provider = assign(:service_type_service_provider, ServiceTypeServiceProvider.create!())
  end

  it "renders the edit service_type_service_provider form" do
    render

    assert_select "form[action=?][method=?]", service_type_service_provider_path(@service_type_service_provider), "post" do
    end
  end
end

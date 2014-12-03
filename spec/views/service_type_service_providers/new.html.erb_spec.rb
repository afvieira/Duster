require 'rails_helper'

RSpec.describe "service_type_service_providers/new", :type => :view do
  before(:each) do
    assign(:service_type_service_provider, ServiceTypeServiceProvider.new())
  end

  it "renders new service_type_service_provider form" do
    render

    assert_select "form[action=?][method=?]", service_type_service_providers_path, "post" do
    end
  end
end

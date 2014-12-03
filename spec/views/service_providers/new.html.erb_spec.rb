require 'rails_helper'

RSpec.describe "service_providers/new", :type => :view do
  before(:each) do
    assign(:service_provider, ServiceProvider.new())
  end

  it "renders new service_provider form" do
    render

    assert_select "form[action=?][method=?]", service_providers_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "service_type_service_providers/index", :type => :view do
  before(:each) do
    assign(:service_type_service_providers, [
      ServiceTypeServiceProvider.create!(),
      ServiceTypeServiceProvider.create!()
    ])
  end

  it "renders a list of service_type_service_providers" do
    render
  end
end

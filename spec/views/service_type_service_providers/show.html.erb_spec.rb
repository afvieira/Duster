require 'rails_helper'

RSpec.describe "service_type_service_providers/show", :type => :view do
  before(:each) do
    @service_type_service_provider = assign(:service_type_service_provider, ServiceTypeServiceProvider.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

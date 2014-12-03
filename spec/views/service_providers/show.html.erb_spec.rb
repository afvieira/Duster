require 'rails_helper'

RSpec.describe "service_providers/show", :type => :view do
  before(:each) do
    @service_provider = assign(:service_provider, ServiceProvider.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

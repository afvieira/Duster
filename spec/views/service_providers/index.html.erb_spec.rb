require 'rails_helper'

RSpec.describe "service_providers/index", :type => :view do
  before(:each) do
    assign(:service_providers, [
      ServiceProvider.create!(),
      ServiceProvider.create!()
    ])
  end

  it "renders a list of service_providers" do
    render
  end
end

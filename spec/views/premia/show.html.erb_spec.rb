require 'rails_helper'

RSpec.describe "premia/show", :type => :view do
  before(:each) do
    @premium = assign(:premium, Premium.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

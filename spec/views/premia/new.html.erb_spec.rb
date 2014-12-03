require 'rails_helper'

RSpec.describe "premia/new", :type => :view do
  before(:each) do
    assign(:premium, Premium.new())
  end

  it "renders new premium form" do
    render

    assert_select "form[action=?][method=?]", premia_path, "post" do
    end
  end
end

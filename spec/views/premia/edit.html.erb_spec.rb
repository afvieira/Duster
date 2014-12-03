require 'rails_helper'

RSpec.describe "premia/edit", :type => :view do
  before(:each) do
    @premium = assign(:premium, Premium.create!())
  end

  it "renders the edit premium form" do
    render

    assert_select "form[action=?][method=?]", premium_path(@premium), "post" do
    end
  end
end

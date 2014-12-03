require 'rails_helper'

RSpec.describe "premia/index", :type => :view do
  before(:each) do
    assign(:premia, [
      Premium.create!(),
      Premium.create!()
    ])
  end

  it "renders a list of premia" do
    render
  end
end

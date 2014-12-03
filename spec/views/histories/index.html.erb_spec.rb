require 'rails_helper'

RSpec.describe "histories/index", :type => :view do
  before(:each) do
    assign(:histories, [
      History.create!(),
      History.create!()
    ])
  end

  it "renders a list of histories" do
    render
  end
end

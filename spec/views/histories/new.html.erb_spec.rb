require 'rails_helper'

RSpec.describe "histories/new", :type => :view do
  before(:each) do
    assign(:history, History.new())
  end

  it "renders new history form" do
    render

    assert_select "form[action=?][method=?]", histories_path, "post" do
    end
  end
end

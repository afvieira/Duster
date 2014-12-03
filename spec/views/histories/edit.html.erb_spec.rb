require 'rails_helper'

RSpec.describe "histories/edit", :type => :view do
  before(:each) do
    @history = assign(:history, History.create!())
  end

  it "renders the edit history form" do
    render

    assert_select "form[action=?][method=?]", history_path(@history), "post" do
    end
  end
end

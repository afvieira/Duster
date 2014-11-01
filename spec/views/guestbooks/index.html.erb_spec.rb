require 'rails_helper'

RSpec.describe "guestbooks/index", :type => :view do
  before(:each) do
    assign(:guestbooks, [
      Guestbook.create!(
        :Name => "Name",
        :Message => "MyText"
      ),
      Guestbook.create!(
        :Name => "Name",
        :Message => "MyText"
      )
    ])
  end

  it "renders a list of guestbooks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

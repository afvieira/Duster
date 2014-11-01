require 'rails_helper'

RSpec.describe "guestbooks/new", :type => :view do
  before(:each) do
    assign(:guestbook, Guestbook.new(
      :Name => "MyString",
      :Message => "MyText"
    ))
  end

  it "renders new guestbook form" do
    render

    assert_select "form[action=?][method=?]", guestbooks_path, "post" do

      assert_select "input#guestbook_Name[name=?]", "guestbook[Name]"

      assert_select "textarea#guestbook_Message[name=?]", "guestbook[Message]"
    end
  end
end

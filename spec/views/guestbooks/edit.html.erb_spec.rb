require 'rails_helper'

RSpec.describe "guestbooks/edit", :type => :view do
  before(:each) do
    @guestbook = assign(:guestbook, Guestbook.create!(
      :Name => "MyString",
      :Message => "MyText"
    ))
  end

  it "renders the edit guestbook form" do
    render

    assert_select "form[action=?][method=?]", guestbook_path(@guestbook), "post" do

      assert_select "input#guestbook_Name[name=?]", "guestbook[Name]"

      assert_select "textarea#guestbook_Message[name=?]", "guestbook[Message]"
    end
  end
end

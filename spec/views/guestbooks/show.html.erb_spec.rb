require 'rails_helper'

RSpec.describe "guestbooks/show", :type => :view do
  before(:each) do
    @guestbook = assign(:guestbook, Guestbook.create!(
      :Name => "Name",
      :Message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end

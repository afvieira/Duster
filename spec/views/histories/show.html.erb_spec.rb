require 'rails_helper'

RSpec.describe "histories/show", :type => :view do
  before(:each) do
    @history = assign(:history, History.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

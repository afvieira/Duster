require 'rails_helper'

RSpec.describe "addicional_informations/index", :type => :view do
  before(:each) do
    assign(:addicional_informations, [
      AddicionalInformation.create!(),
      AddicionalInformation.create!()
    ])
  end

  it "renders a list of addicional_informations" do
    render
  end
end

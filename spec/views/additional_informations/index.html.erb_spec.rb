require 'rails_helper'

RSpec.describe "additional_informations/index", :type => :view do
  before(:each) do
    assign(:additional_informations, [
      AdditionalInformation.create!(),
      AdditionalInformation.create!()
    ])
  end

  it "renders a list of additional_informations" do
    render
  end
end

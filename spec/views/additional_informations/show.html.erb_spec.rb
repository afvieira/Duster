require 'rails_helper'

RSpec.describe "additional_informations/show", :type => :view do
  before(:each) do
    @additional_information = assign(:additional_information, AdditionalInformation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "addicional_informations/show", :type => :view do
  before(:each) do
    @addicional_information = assign(:addicional_information, AddicionalInformation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

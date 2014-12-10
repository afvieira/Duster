require 'rails_helper'

RSpec.describe "additional_informations/new", :type => :view do
  before(:each) do
    assign(:additional_information, AdditionalInformation.new())
  end

  it "renders new additional_information form" do
    render

    assert_select "form[action=?][method=?]", additional_informations_path, "post" do
    end
  end
end

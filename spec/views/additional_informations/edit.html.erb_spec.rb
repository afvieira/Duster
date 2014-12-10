require 'rails_helper'

RSpec.describe "additional_informations/edit", :type => :view do
  before(:each) do
    @additional_information = assign(:additional_information, AdditionalInformation.create!())
  end

  it "renders the edit additional_information form" do
    render

    assert_select "form[action=?][method=?]", additional_information_path(@additional_information), "post" do
    end
  end
end

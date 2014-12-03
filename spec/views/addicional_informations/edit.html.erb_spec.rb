require 'rails_helper'

RSpec.describe "addicional_informations/edit", :type => :view do
  before(:each) do
    @addicional_information = assign(:addicional_information, AddicionalInformation.create!())
  end

  it "renders the edit addicional_information form" do
    render

    assert_select "form[action=?][method=?]", addicional_information_path(@addicional_information), "post" do
    end
  end
end

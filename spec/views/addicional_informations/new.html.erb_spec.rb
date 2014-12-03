require 'rails_helper'

RSpec.describe "addicional_informations/new", :type => :view do
  before(:each) do
    assign(:addicional_information, AddicionalInformation.new())
  end

  it "renders new addicional_information form" do
    render

    assert_select "form[action=?][method=?]", addicional_informations_path, "post" do
    end
  end
end

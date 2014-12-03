require 'rails_helper'

RSpec.describe "payment_types/new", :type => :view do
  before(:each) do
    assign(:payment_type, PaymentType.new())
  end

  it "renders new payment_type form" do
    render

    assert_select "form[action=?][method=?]", payment_types_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "payment_types/edit", :type => :view do
  before(:each) do
    @payment_type = assign(:payment_type, PaymentType.create!())
  end

  it "renders the edit payment_type form" do
    render

    assert_select "form[action=?][method=?]", payment_type_path(@payment_type), "post" do
    end
  end
end

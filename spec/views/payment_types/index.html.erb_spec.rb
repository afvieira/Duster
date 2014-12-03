require 'rails_helper'

RSpec.describe "payment_types/index", :type => :view do
  before(:each) do
    assign(:payment_types, [
      PaymentType.create!(),
      PaymentType.create!()
    ])
  end

  it "renders a list of payment_types" do
    render
  end
end

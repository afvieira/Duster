require 'rails_helper'

RSpec.describe "payment_types/show", :type => :view do
  before(:each) do
    @payment_type = assign(:payment_type, PaymentType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "utilizadors/index", :type => :view do
  before(:each) do
    assign(:utilizadors, [
      Utilizador.create!(),
      Utilizador.create!()
    ])
  end

  it "renders a list of utilizadors" do
    render
  end
end

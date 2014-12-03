require 'rails_helper'

RSpec.describe "utilizadors/new", :type => :view do
  before(:each) do
    assign(:utilizador, Utilizador.new())
  end

  it "renders new utilizador form" do
    render

    assert_select "form[action=?][method=?]", utilizadors_path, "post" do
    end
  end
end

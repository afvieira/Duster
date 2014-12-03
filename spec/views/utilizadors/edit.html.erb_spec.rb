require 'rails_helper'

RSpec.describe "utilizadors/edit", :type => :view do
  before(:each) do
    @utilizador = assign(:utilizador, Utilizador.create!())
  end

  it "renders the edit utilizador form" do
    render

    assert_select "form[action=?][method=?]", utilizador_path(@utilizador), "post" do
    end
  end
end

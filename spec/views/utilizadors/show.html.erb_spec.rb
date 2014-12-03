require 'rails_helper'

RSpec.describe "utilizadors/show", :type => :view do
  before(:each) do
    @utilizador = assign(:utilizador, Utilizador.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

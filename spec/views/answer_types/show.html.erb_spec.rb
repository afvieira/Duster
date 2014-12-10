require 'rails_helper'

RSpec.describe "answer_types/show", :type => :view do
  before(:each) do
    @answer_type = assign(:answer_type, AnswerType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

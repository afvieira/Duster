require 'rails_helper'

RSpec.describe "answer_types/index", :type => :view do
  before(:each) do
    assign(:answer_types, [
      AnswerType.create!(),
      AnswerType.create!()
    ])
  end

  it "renders a list of answer_types" do
    render
  end
end

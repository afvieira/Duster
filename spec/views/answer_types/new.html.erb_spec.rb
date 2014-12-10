require 'rails_helper'

RSpec.describe "answer_types/new", :type => :view do
  before(:each) do
    assign(:answer_type, AnswerType.new())
  end

  it "renders new answer_type form" do
    render

    assert_select "form[action=?][method=?]", answer_types_path, "post" do
    end
  end
end

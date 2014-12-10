require 'rails_helper'

RSpec.describe "answer_types/edit", :type => :view do
  before(:each) do
    @answer_type = assign(:answer_type, AnswerType.create!())
  end

  it "renders the edit answer_type form" do
    render

    assert_select "form[action=?][method=?]", answer_type_path(@answer_type), "post" do
    end
  end
end

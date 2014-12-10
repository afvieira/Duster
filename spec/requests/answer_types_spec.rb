require 'rails_helper'

RSpec.describe "AnswerTypes", :type => :request do
  describe "GET /answer_types" do
    it "works! (now write some real specs)" do
      get answer_types_path
      expect(response).to have_http_status(200)
    end
  end
end

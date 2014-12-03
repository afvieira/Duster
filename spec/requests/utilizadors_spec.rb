require 'rails_helper'

RSpec.describe "Utilizadors", :type => :request do
  describe "GET /utilizadors" do
    it "works! (now write some real specs)" do
      get utilizadors_path
      expect(response).to have_http_status(200)
    end
  end
end

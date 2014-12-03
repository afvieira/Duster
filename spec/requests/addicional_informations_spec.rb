require 'rails_helper'

RSpec.describe "AddicionalInformations", :type => :request do
  describe "GET /addicional_informations" do
    it "works! (now write some real specs)" do
      get addicional_informations_path
      expect(response).to have_http_status(200)
    end
  end
end

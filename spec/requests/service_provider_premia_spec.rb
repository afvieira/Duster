require 'rails_helper'

RSpec.describe "ServiceProviderPremia", :type => :request do
  describe "GET /service_provider_premia" do
    it "works! (now write some real specs)" do
      get service_provider_premia_path
      expect(response).to have_http_status(200)
    end
  end
end

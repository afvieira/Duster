require "rails_helper"

RSpec.describe ServiceProviderPremiaController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/service_provider_premia").to route_to("service_provider_premia#index")
    end

    it "routes to #new" do
      expect(:get => "/service_provider_premia/new").to route_to("service_provider_premia#new")
    end

    it "routes to #show" do
      expect(:get => "/service_provider_premia/1").to route_to("service_provider_premia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_provider_premia/1/edit").to route_to("service_provider_premia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/service_provider_premia").to route_to("service_provider_premia#create")
    end

    it "routes to #update" do
      expect(:put => "/service_provider_premia/1").to route_to("service_provider_premia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_provider_premia/1").to route_to("service_provider_premia#destroy", :id => "1")
    end

  end
end

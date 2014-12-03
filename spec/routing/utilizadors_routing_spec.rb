require "rails_helper"

RSpec.describe UtilizadorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/utilizadors").to route_to("utilizadors#index")
    end

    it "routes to #new" do
      expect(:get => "/utilizadors/new").to route_to("utilizadors#new")
    end

    it "routes to #show" do
      expect(:get => "/utilizadors/1").to route_to("utilizadors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/utilizadors/1/edit").to route_to("utilizadors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/utilizadors").to route_to("utilizadors#create")
    end

    it "routes to #update" do
      expect(:put => "/utilizadors/1").to route_to("utilizadors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/utilizadors/1").to route_to("utilizadors#destroy", :id => "1")
    end

  end
end

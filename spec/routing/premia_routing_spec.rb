require "rails_helper"

RSpec.describe PremiaController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/premia").to route_to("premia#index")
    end

    it "routes to #new" do
      expect(:get => "/premia/new").to route_to("premia#new")
    end

    it "routes to #show" do
      expect(:get => "/premia/1").to route_to("premia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/premia/1/edit").to route_to("premia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/premia").to route_to("premia#create")
    end

    it "routes to #update" do
      expect(:put => "/premia/1").to route_to("premia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/premia/1").to route_to("premia#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe AddicionalInformationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/addicional_informations").to route_to("addicional_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/addicional_informations/new").to route_to("addicional_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/addicional_informations/1").to route_to("addicional_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/addicional_informations/1/edit").to route_to("addicional_informations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/addicional_informations").to route_to("addicional_informations#create")
    end

    it "routes to #update" do
      expect(:put => "/addicional_informations/1").to route_to("addicional_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/addicional_informations/1").to route_to("addicional_informations#destroy", :id => "1")
    end

  end
end

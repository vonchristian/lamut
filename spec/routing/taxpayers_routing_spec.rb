require "rails_helper"

RSpec.describe TaxpayersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/taxpayers").to route_to("taxpayers#index")
    end

    it "routes to #new" do
      expect(:get => "/taxpayers/new").to route_to("taxpayers#new")
    end

    it "routes to #show" do
      expect(:get => "/taxpayers/1").to route_to("taxpayers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/taxpayers/1/edit").to route_to("taxpayers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/taxpayers").to route_to("taxpayers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/taxpayers/1").to route_to("taxpayers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/taxpayers/1").to route_to("taxpayers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taxpayers/1").to route_to("taxpayers#destroy", :id => "1")
    end

  end
end

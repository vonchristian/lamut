require "rails_helper"

RSpec.describe ModeOfPaymentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mode_of_payments").to route_to("mode_of_payments#index")
    end

    it "routes to #new" do
      expect(:get => "/mode_of_payments/new").to route_to("mode_of_payments#new")
    end

    it "routes to #show" do
      expect(:get => "/mode_of_payments/1").to route_to("mode_of_payments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mode_of_payments/1/edit").to route_to("mode_of_payments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mode_of_payments").to route_to("mode_of_payments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mode_of_payments/1").to route_to("mode_of_payments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mode_of_payments/1").to route_to("mode_of_payments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mode_of_payments/1").to route_to("mode_of_payments#destroy", :id => "1")
    end

  end
end

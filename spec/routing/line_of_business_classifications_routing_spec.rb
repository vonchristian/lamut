require "rails_helper"

RSpec.describe LineOfBusinessClassificationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/line_of_business_classifications").to route_to("line_of_business_classifications#index")
    end

    it "routes to #new" do
      expect(:get => "/line_of_business_classifications/new").to route_to("line_of_business_classifications#new")
    end

    it "routes to #show" do
      expect(:get => "/line_of_business_classifications/1").to route_to("line_of_business_classifications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/line_of_business_classifications/1/edit").to route_to("line_of_business_classifications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/line_of_business_classifications").to route_to("line_of_business_classifications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/line_of_business_classifications/1").to route_to("line_of_business_classifications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/line_of_business_classifications/1").to route_to("line_of_business_classifications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/line_of_business_classifications/1").to route_to("line_of_business_classifications#destroy", :id => "1")
    end

  end
end

require 'rails_helper'

RSpec.describe "LineOfBusinessClassifications", type: :request do
  describe "GET /line_of_business_classifications" do
    it "works! (now write some real specs)" do
      get line_of_business_classifications_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "Taxpayers", type: :request do
  describe "GET /taxpayers" do
    it "works! (now write some real specs)" do
      get taxpayers_path
      expect(response).to have_http_status(200)
    end
  end
end

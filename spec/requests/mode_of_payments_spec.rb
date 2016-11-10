require 'rails_helper'

RSpec.describe "ModeOfPayments", type: :request do
  describe "GET /mode_of_payments" do
    it "works! (now write some real specs)" do
      get mode_of_payments_path
      expect(response).to have_http_status(200)
    end
  end
end

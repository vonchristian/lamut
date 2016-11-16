require 'rails_helper'

RSpec.describe "mode_of_payments/index", type: :view do
  before(:each) do
    assign(:mode_of_payments, [
      ModeOfPayment.create!(
        :name => "Name"
      ),
      ModeOfPayment.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of mode_of_payments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

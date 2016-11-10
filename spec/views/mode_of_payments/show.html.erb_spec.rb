require 'rails_helper'

RSpec.describe "mode_of_payments/show", type: :view do
  before(:each) do
    @mode_of_payment = assign(:mode_of_payment, ModeOfPayment.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

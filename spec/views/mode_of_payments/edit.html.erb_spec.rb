require 'rails_helper'

RSpec.describe "mode_of_payments/edit", type: :view do
  before(:each) do
    @mode_of_payment = assign(:mode_of_payment, ModeOfPayment.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit mode_of_payment form" do
    render

    assert_select "form[action=?][method=?]", mode_of_payment_path(@mode_of_payment), "post" do

      assert_select "input#mode_of_payment_name[name=?]", "mode_of_payment[name]"
    end
  end
end

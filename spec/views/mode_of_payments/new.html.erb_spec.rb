require 'rails_helper'

RSpec.describe "mode_of_payments/new", type: :view do
  before(:each) do
    assign(:mode_of_payment, ModeOfPayment.new(
      :name => "MyString"
    ))
  end

  it "renders new mode_of_payment form" do
    render

    assert_select "form[action=?][method=?]", mode_of_payments_path, "post" do

      assert_select "input#mode_of_payment_name[name=?]", "mode_of_payment[name]"
    end
  end
end

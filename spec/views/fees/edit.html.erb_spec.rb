require 'rails_helper'

RSpec.describe "fees/edit", type: :view do
  before(:each) do
    @fee = assign(:fee, Fee.create!(
      :type => "",
      :name => "MyString",
      :amount => "9.99"
    ))
  end

  it "renders the edit fee form" do
    render

    assert_select "form[action=?][method=?]", fee_path(@fee), "post" do

      assert_select "input#fee_type[name=?]", "fee[type]"

      assert_select "input#fee_name[name=?]", "fee[name]"

      assert_select "input#fee_amount[name=?]", "fee[amount]"
    end
  end
end

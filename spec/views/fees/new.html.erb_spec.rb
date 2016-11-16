require 'rails_helper'

RSpec.describe "fees/new", type: :view do
  before(:each) do
    assign(:fee, Fee.new(
      :type => "",
      :name => "MyString",
      :amount => "9.99"
    ))
  end

  it "renders new fee form" do
    render

    assert_select "form[action=?][method=?]", fees_path, "post" do

      assert_select "input#fee_type[name=?]", "fee[type]"

      assert_select "input#fee_name[name=?]", "fee[name]"

      assert_select "input#fee_amount[name=?]", "fee[amount]"
    end
  end
end

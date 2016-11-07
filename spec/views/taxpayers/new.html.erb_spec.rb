require 'rails_helper'

RSpec.describe "taxpayers/new", type: :view do
  before(:each) do
    assign(:taxpayer, Taxpayer.new(
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :mobile_number => "MyString",
      :email => "MyString",
      :sex => 1
    ))
  end

  it "renders new taxpayer form" do
    render

    assert_select "form[action=?][method=?]", taxpayers_path, "post" do

      assert_select "input#taxpayer_first_name[name=?]", "taxpayer[first_name]"

      assert_select "input#taxpayer_middle_name[name=?]", "taxpayer[middle_name]"

      assert_select "input#taxpayer_last_name[name=?]", "taxpayer[last_name]"

      assert_select "input#taxpayer_mobile_number[name=?]", "taxpayer[mobile_number]"

      assert_select "input#taxpayer_email[name=?]", "taxpayer[email]"

      assert_select "input#taxpayer_sex[name=?]", "taxpayer[sex]"
    end
  end
end

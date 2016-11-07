require 'rails_helper'

RSpec.describe "taxpayers/index", type: :view do
  before(:each) do
    assign(:taxpayers, [
      Taxpayer.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :mobile_number => "Mobile Number",
        :email => "Email",
        :sex => 2
      ),
      Taxpayer.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :mobile_number => "Mobile Number",
        :email => "Email",
        :sex => 2
      )
    ])
  end

  it "renders a list of taxpayers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

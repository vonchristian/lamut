require 'rails_helper'

RSpec.describe "taxpayers/show", type: :view do
  before(:each) do
    @taxpayer = assign(:taxpayer, Taxpayer.create!(
      :first_name => "First Name",
      :middle_name => "Middle Name",
      :last_name => "Last Name",
      :mobile_number => "Mobile Number",
      :email => "Email",
      :sex => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Mobile Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
  end
end

require 'rails_helper'

RSpec.describe "fees/show", type: :view do
  before(:each) do
    @fee = assign(:fee, Fee.create!(
      :type => "Type",
      :name => "Name",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
  end
end

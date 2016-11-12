require 'rails_helper'

RSpec.describe "line_of_business_classifications/index", type: :view do
  before(:each) do
    assign(:line_of_business_classifications, [
      LineOfBusinessClassification.create!(
        :name => "Name"
      ),
      LineOfBusinessClassification.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of line_of_business_classifications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

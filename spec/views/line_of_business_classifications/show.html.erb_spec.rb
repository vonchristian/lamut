require 'rails_helper'

RSpec.describe "line_of_business_classifications/show", type: :view do
  before(:each) do
    @line_of_business_classification = assign(:line_of_business_classification, LineOfBusinessClassification.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

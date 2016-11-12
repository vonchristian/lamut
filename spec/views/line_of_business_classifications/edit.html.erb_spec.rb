require 'rails_helper'

RSpec.describe "line_of_business_classifications/edit", type: :view do
  before(:each) do
    @line_of_business_classification = assign(:line_of_business_classification, LineOfBusinessClassification.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit line_of_business_classification form" do
    render

    assert_select "form[action=?][method=?]", line_of_business_classification_path(@line_of_business_classification), "post" do

      assert_select "input#line_of_business_classification_name[name=?]", "line_of_business_classification[name]"
    end
  end
end

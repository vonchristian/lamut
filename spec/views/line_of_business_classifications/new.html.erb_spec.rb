require 'rails_helper'

RSpec.describe "line_of_business_classifications/new", type: :view do
  before(:each) do
    assign(:line_of_business_classification, LineOfBusinessClassification.new(
      :name => "MyString"
    ))
  end

  it "renders new line_of_business_classification form" do
    render

    assert_select "form[action=?][method=?]", line_of_business_classifications_path, "post" do

      assert_select "input#line_of_business_classification_name[name=?]", "line_of_business_classification[name]"
    end
  end
end

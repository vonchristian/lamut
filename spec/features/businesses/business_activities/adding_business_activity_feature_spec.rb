require 'rails_helper'

feature "Adding business activity of a business" do
  before (:each) do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
   end
  given!(:taxpayer) { create(:taxpayer)}
  given!(:business) { create(:business, taxpayer: taxpayer) }
  given!(:line_of_business_classification) { create(:line_of_business_classification)}
  given!(:line_of_business) { create(:line_of_business, name: "Sari Sari Store", line_of_business_classification: line_of_business_classification)}
  scenario "with valid attributes" do
    visit business_path(business)
    click_link "Add New Business Activity"
    click_button "Add"

    expect(page).to have_content("added successfully")
    expect(business.business_activities).to be_present
  end
end

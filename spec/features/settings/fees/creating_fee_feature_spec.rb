require 'rails_helper'

feature "Creating a Fee" do
  before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end
  scenario 'with valid attributes' do
    visit settings_fees_path
    click_link "New Fee"
    fill_in "Name", with: "Sanitary Inspection Fee"
    fill_in "Amount", with: 500
    check "Default"
    click_button "Create Fee"

    expect(page).to have_content("created successfully")
  end
end

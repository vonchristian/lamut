require 'rails_helper'

feature "Creating Gross sale" do
  before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end

  given!(:taxpayer) { create(:taxpayer)}
  given!(:business) { create(:business, taxpayer: taxpayer) }

  scenario 'with valid attributes' do
    visit business_path(business)
    click_link "New Gross Sale"
    fill_in "Amount", with: 100_000
    fill_in "Calendar year", with: Date.today
    click_button "Save"

    # save_and_open_page

    expect(page).to have_content("saved successfully")
  end
  scenario 'with invalid attributes' do
    visit business_path(business)
    click_link "New Gross Sale"
    click_button "Save"

    expect(page).to have_content("can't be blank")
  end
end

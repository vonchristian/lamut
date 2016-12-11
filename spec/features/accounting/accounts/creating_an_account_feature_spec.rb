require 'rails_helper'

feature "Creating Account" do
  before (:each) do
     user = FactoryGirl.create(:user)
     login_as(user, :scope => :user)
   end

  scenario 'with valid attributes' do
    visit accounting_accounts_path
    click_link "New Account"
    fill_in "Name", with: "Cash on Hand"
    fill_in "Account code", with: '09090'
    choose "Accounting::Asset"

    click_button "Create Account"

    expect(page).to have_content("created successfully")
  end
end

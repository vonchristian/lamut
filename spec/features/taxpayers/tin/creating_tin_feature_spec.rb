require 'rails_helper'

feature "Adding TIN of Taxpayer" do
  before(:each) do
    user = create(:user)
    login_as(user, scope: user)
  end
  given!(:taxpayer) { create(:taxpayer) }
  scenario 'with valid atributes' do
    visit taxpayer_path(taxpayer)
    click_link "Add TIN"
    fill_in "Number", with: "000934344"
    click_button "Save"

    expect(page).to have_content("saved successfully")
  end
end

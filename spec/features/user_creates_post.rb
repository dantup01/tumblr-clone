require 'rails_helper'

feature "User creates post" do
  scenario "successfully" do
    visit root_path

    click_on "Choose file"
    fill_in "Add a caption", with: "New photo"
    click_on "Create post"

    expect(page).to have_css '.feed-image', text: 'New photo'
  end
end

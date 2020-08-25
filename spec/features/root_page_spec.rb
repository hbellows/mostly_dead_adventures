require 'rails_helper'

feature "User can visit root page" do
  scenario "and view welcome message" do
    VCR.use_cassette('root_page') do
      visit "/"
      expect(page).to have_content("Welcome to Mostly Dead Adventures!")
    end
  end
end

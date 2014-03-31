require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "Item management" do
  scenario "User can add a product and see it on the home page" do

    visit '/'
    expect(page).to have_content("Welcome")
    expect(page).to_not have_content("Cory's Awesome Product")
    click_on("Add a Product")
    fill_in "new_product", with: "Cory's Awesome Product"
    click_on("Create Product")
    expect(page).to have_content("Cory's Awesome Product")

  end
end
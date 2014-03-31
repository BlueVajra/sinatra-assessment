require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "Item management" do
  scenario "User can click the link 'Add a Product'" do

    visit '/'
    expect(page).to have_content("Welcome")
    click_on("Add a Product")
    fill_in "new_product", with: "Cory's Awesome Product"
    click_on("Create Product")


  end
end
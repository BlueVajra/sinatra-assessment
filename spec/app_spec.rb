require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "Item management" do
  scenario "User sees Welcome on the home screen" do

    visit '/'
    expect(page).to have_content("Welcome")

  end
end
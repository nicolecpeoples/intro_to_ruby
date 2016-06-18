require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  feature "user registration" do
    scenario "successfully creates a new user account" do
      visit "/"
      fill_in "first_name", with: "Foo"
      fill_in "last_name", with: "Bar"
      fill_in "email", with: "foo@bar.com"
      fill_in "password", with: "password"
      fill_in "confirm_password", with: "password"
      click_button "Sign Up"
      expect(page).to have_content "User successfully created"
    end
  end
end

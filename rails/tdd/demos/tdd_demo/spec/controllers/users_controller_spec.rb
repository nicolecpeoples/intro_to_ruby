require 'rails_helper'

describe UsersController do
  it "routes /users to the users controller" do
    expect(:get => "/users").to route_to(:controller => "users", :action => "index")
  end
  it "routes /users/:id to users profile" do
    expect(:get => "/users/1").to route_to(:controller => "users", :action => "show", :id => "1")
  end
end

feature "guest user creates an account" do
  scenario "successfully creates a new user account" do
    visit "users#index"
    fill_in "user_first_name", with: "Foo"
    fill_in "user_last_name", with: "Bar"
    fill_in "user_email", with: "foo@bar.com"
    click_button "Create User"
    expect(page).to have_content "User successfully created"
  end
end
require 'rails_helper'

RSpec.describe User do
  it "should not save if email already exists" do 
  	User.create(
    first_name: "Jane",
    last_name: "Doe",
    email: "janethebest@codingdojo.com"
   )
   user = User.new(
    first_name: "Jane",
    last_name: "Smith",
    email: "janethebest@codingdojo.com"
   )
   expect(user).to be_invalid

  end 
  it "should not save if first_name field is blank" do 
  	user = User.create(first_name: '')
  	expect(user).to be_invalid
  end
  it "must be a valid email" do 
   user = User.new(
    first_name: "Jane",
    last_name: "Smith",
    email: "janethebest"
   )
   expect(user).to be_invalid
  end 
end
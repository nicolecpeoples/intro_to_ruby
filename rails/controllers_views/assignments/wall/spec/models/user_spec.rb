require 'rails_helper'

RSpec.describe User, type: :model do
	it "can be created with a username and password" do
		user = User.new
		user.username = "TESTER"
		user.password = "PASSWORDTEST"
		expect(user).to be_valid
		worked = user.save
		expect(worked).to be_truthy
	end
	it "requires username and password to be valid" do
		user = User.new
		user.username = "T"
		user.password = "PASSWORDTEST"
		expect(user).to be_invalid
	end
end

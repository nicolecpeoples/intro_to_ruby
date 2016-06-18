require 'rails_helper'

RSpec.describe Validation do
	it "is a valid persons name " do
		user = Validation.create(person_name: '')
		expect(user). to be_invalid
	end
	it "is a valid pet's name" do 
		user = Validation.create(pet_name: '')
		expect(user). to be_invalid
	end 
	it "is a valid age for a person" do 
		user = Validation.create(person_age: 0)
		expect(user). to be_invalid
	end
	it "is a valid age for a pet" do 
		user = Validation.create(pet_age: 0)
		expect(user). to be_invalid
	end
end


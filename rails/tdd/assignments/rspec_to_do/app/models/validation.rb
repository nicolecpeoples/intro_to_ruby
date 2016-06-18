class Validation < ActiveRecord::Base
	validates :person_name, :pet_name, :presence => true, length: { in: 2..20 }
	validates :person_age, inclusion: { in: 1..9 }	
	validates :pet_age, inclusion: { in: 1..9 }
end

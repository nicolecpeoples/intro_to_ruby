class Dojo < ActiveRecord::Base
	has_many :ninjas

	validates :name, :city, :state, presence: true
	validates_length_of :state, is: 2
	
end

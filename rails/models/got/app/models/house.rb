class House < ActiveRecord::Base
	has_many :characters
	has_one :lord , class: Character
end
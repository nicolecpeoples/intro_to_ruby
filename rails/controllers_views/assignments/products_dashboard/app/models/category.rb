class Category < ActiveRecord::Base
	has_many :products , class: Product

end

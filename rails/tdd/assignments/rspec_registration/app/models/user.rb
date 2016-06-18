class User < ActiveRecord::Base
	email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :presence => true, length: { in: 2 .. 20}
	
end

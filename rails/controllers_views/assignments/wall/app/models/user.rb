class User < ActiveRecord::Base
	validates :username, :password, presence: true
	validates :username, length: {minimum: 2}
	has_many :posts
	has_many :messages
end

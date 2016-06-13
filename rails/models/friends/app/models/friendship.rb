class Friendship < ActiveRecord::Base
  belongs_to :user #looks for the user model
  belongs_to :friend  #looks for friend class, but needs to look for User
  	class_name: "User"
end

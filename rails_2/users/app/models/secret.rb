class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy	
  has_many :users_liked, through: :likes, source: :user

  validates :content, presence: true, length: { minimum: 6}

  def  find_like(user)
  	Like.where(user: user, secret: self)[0].id
  end 
end

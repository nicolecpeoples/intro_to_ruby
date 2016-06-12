class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :author, presence: true
  validates :message, presence: true
end

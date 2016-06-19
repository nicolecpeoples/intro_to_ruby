class User < ActiveRecord::Base
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  has_secure_password
  before_save {self.email = email.downcase}
  before_save {self.name = name.capitalize}
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true, length: { maximum: 50}
  validates :email, presence:true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6}, allow_nil: true
end

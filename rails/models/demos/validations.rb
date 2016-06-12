class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  before_save do
    self.email.downcase!
  end
  before_create do
    self.admin = false #assuming there is an admin field with a boolean value
  end
  def full_name
    self.first_name + " " + self.last_name
  end
  def admin?
    self.admin
  end
  def self.average_age
    users = User.all
    total_age = 0
    users.each do |user|
      total_age += user.age
    end
    total_age / User.count
  end
end

Here is a short list of other types of validations:

:length - validates the length of an attributes value
:minimum, :maximum, :in, :is
:numericality - validates whether an attribute is a numeric value
: :odd, :even, and many others
:presence - validates that the specified attributes are not empty
:uniqueness - validates whether the value is unique in the corresponding database table. NOTE: always create a unique index in the database too.
:confirmation - use this when you have two text fields that should receive exactly the same content; assumes the second field name has "_confirmation" appended
validates_associated - use this when your model has associations with other models and they also need to be validated
:acceptance - validate whether a checkbox was checked when a form was submitted (usually for 'terms and conditions')
also get familiar with .message and .on


#callbacks
Often we are going to want an action to happen before or after we save/create/validate an object. Rails has built-in callback functions that allow us to easily do this.

before_validation
before_validation_on_create
after_validation
after_validation_on_create
before_save
before_create
after_create
after_save
We will generally only use the before_validation, before_save and before_create in our projects. These callbacks are useful for manipulating data before we store it in a database or validate it.

#associations

belongs_to
has_one
has_many
has_many :through
has_one :through
has_and_belongs_to_many
class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, :dependent => :destroy

  validates :title, :content, presence: true
  validates_length_of :title, minimum: 7


end

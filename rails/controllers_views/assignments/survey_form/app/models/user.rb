class User < ActiveRecord::Base
  belongs_to :location
  belongs_to :language
end

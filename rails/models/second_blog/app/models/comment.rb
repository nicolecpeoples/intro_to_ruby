class Comment < ActiveRecord::Base
	belongs_to :comment_table, polymorphic: true
end

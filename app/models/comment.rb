class Comment < ApplicationRecord

	belongs_to :end_user
	belongs_to :item

	validates :comment_text, presence: true
end

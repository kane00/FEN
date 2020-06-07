class Comment < ApplicationRecord

	belongs_to :end_user
	has_many :items, dependent: :destroy

end

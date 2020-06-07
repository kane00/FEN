class Item < ApplicationRecord

	belongs_to :end_user
	has_many :comments, dependent: :destroy
	belongs_to :genre
	belongs_to :unit

end

class Genre < ApplicationRecord

	has_many :items, dependent: :destroy

	validates :genre_name, uniqueness: true

end

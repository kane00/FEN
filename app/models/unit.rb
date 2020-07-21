class Unit < ApplicationRecord

	has_many :items, dependent: :destroy

	validates :unit_name, uniqueness: true, presence: true
end

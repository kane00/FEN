class Unit < ApplicationRecord

	has_many :items, dependent: :destroy
end

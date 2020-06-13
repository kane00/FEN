class Item < ApplicationRecord

	belongs_to :end_user
	has_many :comments, dependent: :destroy
	belongs_to :genre
	belongs_to :unit

	# 画像表示用
	attachment :image

	# タグ機能,acts_as_taggable_on :tags　と同じ意味のエイリアス
	acts_as_taggable

end

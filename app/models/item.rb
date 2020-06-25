class Item < ApplicationRecord

	belongs_to :end_user
	has_many :comments, dependent: :destroy
	belongs_to :genre
	belongs_to :unit
	has_many :likes, dependent: :destroy

	# 画像表示用
	attachment :image

	# タグ機能,acts_as_taggable_on :tags　と同じ意味のエイリアス
	acts_as_taggable_on :tags

	# 検索機能
	def self.search(word)
      if word
        Item.where(['item_name LIKE ?', "%#{word}%"])
      else
        Item.where.not(item_status: 'false')
      end
    end

end

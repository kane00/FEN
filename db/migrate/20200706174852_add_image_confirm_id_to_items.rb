class AddImageConfirmIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :image_confirm_id, :string
  end
end

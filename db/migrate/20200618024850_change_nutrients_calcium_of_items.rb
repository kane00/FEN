class ChangeNutrientsCalciumOfItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :nutrients_calcium, :float, default: "-"

  end
end

class ChangeDefaultsOfItems < ActiveRecord::Migration[5.2]
  	def up	#修正後
    change_column :items, :nutrients_sodium, :decimal, default: "-"
    change_column :items, :nutrients_potassium, :decimal, default: "-"
    change_column :items, :nutrients_magnesium, :decimal, default: "-"
    change_column :items, :nutrients_rin, :decimal, default: "-"
    change_column :items, :nutrients_iron, :decimal, default: "-"
    change_column :items, :nutrients_zinc, :decimal, default: "-"
    change_column :items, :nutrients_copper, :decimal, default: "-"
    change_column :items, :nutrients_manganese, :decimal, default: "-"
    change_column :items, :nutrients_lodine, :decimal, default: "-"
    change_column :items, :nutrients_selenium, :decimal, default: "-"
    change_column :items, :nutrients_chromium, :decimal, default: "-"
    change_column :items, :nutrients_molybdenum, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_a, :decimal, default: "-"
    change_column :items, :nutrients_β_carotene, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_d, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_e, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_k, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_b1, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_b2, :decimal, default: "-"
    change_column :items, :nutrients_niacin, :decimal, default: "-"
    change_column :items, :nutrients_vitmain_b6, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_b12, :decimal, default: "-"
    change_column :items, :nutrients_folic_acid, :decimal, default: "-"
    change_column :items, :nutrients_pantothenic_acid, :decimal, default: "-"
    change_column :items, :nutrients_biotin, :decimal, default: "-"
    change_column :items, :nutrients_vitamin_c, :decimal, default: "-"
    change_column :items, :nutrients_saturated_fatty_acid, :decimal, default: "-"
    change_column :items, :nutrients_polyunsaturated_fatty_acid, :decimal, default: "-"
    change_column :items, :nutrients_monounsaturated_fatty_acid, :decimal, default: "-"
    change_column :items, :nutrients_cholesterol, :decimal, default: "-"
    change_column :items, :nutrients_soluble_dietary_fiber, :decimal, default: "-"
    change_column :items, :nutrients_insoluble_dietary_fiber, :decimal, default: "-"
    change_column :items, :nutrients_dietary_fiber, :decimal, default: "-"
  end

  def down	#修正前
    change_column :items, :nutrients_sodium, :decimal
    change_column :items, :nutrients_potassium, :decimal
    change_column :items, :nutrients_magnesium, :decimal
    change_column :items, :nutrients_rin, :decimal
    change_column :items, :nutrients_iron, :decimal
    change_column :items, :nutrients_zinc, :decimal
    change_column :items, :nutrients_copper, :decimal
    change_column :items, :nutrients_manganese, :decimal
    change_column :items, :nutrients_lodine, :decimal
    change_column :items, :nutrients_selenium, :decimal
    change_column :items, :nutrients_chromium, :decimal
    change_column :items, :nutrients_molybdenum, :decimal
    change_column :items, :nutrients_vitamin_a, :decimal
    change_column :items, :nutrients_β_carotene, :decimal
    change_column :items, :nutrients_vitamin_d, :decimal
    change_column :items, :nutrients_vitamin_e, :decimal
    change_column :items, :nutrients_vitamin_k, :decimal
    change_column :items, :nutrients_vitamin_b1, :decimal
    change_column :items, :nutrients_vitamin_b2, :decimal
    change_column :items, :nutrients_niacin, :decimal
    change_column :items, :nutrients_vitmain_b6, :decimal
    change_column :items, :nutrients_vitamin_b12, :decimal
    change_column :items, :nutrients_folic_acid, :decimal
    change_column :items, :nutrients_pantothenic_acid, :decimal
    change_column :items, :nutrients_biotin, :decimal
    change_column :items, :nutrients_vitamin_c, :decimal
    change_column :items, :nutrients_saturated_fatty_acid, :decimal
    change_column :items, :nutrients_polyunsaturated_fatty_acid, :decimal
    change_column :items, :nutrients_monounsaturated_fatty_acid, :decimal
    change_column :items, :nutrients_cholesterol, :decimal
    change_column :items, :nutrients_soluble_dietary_fiber, :decimal
    change_column :items, :nutrients_insoluble_dietary_fiber, :decimal
    change_column :items, :nutrients_dietary_fiber, :decimal
  end
end

ActiveAdmin.register Item do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :end_user_id, :genre_id, :unit_id, :item_name, :image, :maker, :retail_price, :remark, :item_status, :confirm_status, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber
  #
  # or
  #
  # permit_params do
  #   permitted = [:end_user_id, :genre_id, :unit_id, :item_name, :image, :maker, :retail_price, :remark, :item_status, :confirm_status, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :end_user_id, :genre_id, :unit_id, :item_name, :image, :maker, :retail_price, :remark, :item_status, :confirm_status, :tag_list, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber


  form do |f|
    f.inputs '新規登録' do
      f.input :end_user   #外部キーのid不要
      f.input :genre
      f.input :tag_list 
      f.input :unit
      f.input :item_name
      f.file_field :image
      f.input :maker
      f.input :retail_price
      f.input :remark
      f.check_box :item_status
      f.check_box :confirm_status
      f.input :nutrients_calorie
      f.input :nutrients_protein
      f.input :nutrients_lipid
      f.input :nutrients_carbohydrate
      f.input :nutrients_salt
      f.input :nutrients_sodium
      f.input :nutrients_potassium
      f.input :nutrients_calcium
      f.input :nutrients_magnesium
      f.input :nutrients_rin
      f.input :nutrients_iron
      f.input :nutrients_zinc
      f.input :nutrients_copper
      f.input :nutrients_manganese
      f.input :nutrients_lodine
      f.input :nutrients_selenium
      f.input :nutrients_chromium
      f.input :nutrients_molybdenum
      f.input :nutrients_vitamin_a
      f.input :nutrients_β_carotene
      f.input :nutrients_vitamin_d
      f.input :nutrients_vitamin_e
      f.input :nutrients_vitamin_k
      f.input :nutrients_vitamin_b1
      f.input :nutrients_vitamin_b2
      f.input :nutrients_niacin
      f.input :nutrients_vitmain_b6
      f.input :nutrients_vitamin_b12
      f.input :nutrients_folic_acid
      f.input :nutrients_pantothenic_acid
      f.input :nutrients_biotin
      f.input :nutrients_vitamin_c
      f.input :nutrients_saturated_fatty_acid
      f.input :nutrients_polyunsaturated_fatty_acid
      f.input :nutrients_monounsaturated_fatty_acid
      f.input :nutrients_cholesterol
      f.input :nutrients_soluble_dietary_fiber
      f.input :nutrients_insoluble_dietary_fiber
      f.input :nutrients_dietary_fiber
      
    end
    f.actions
  end

end
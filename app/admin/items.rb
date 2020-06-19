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
  permit_params do
    permitted = [:end_user_id, :genre_id, :unit_id, :item_name, :image, :image_id, :maker, :retail_price, :remark, :item_status, :confirm_status, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
  # permit_params :end_user_id, :genre_id, :unit_id, :item_name, :image, :maker, :retail_price, :remark, :item_status, :confirm_status, :tag_list, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber

  index do
   # check this page
   column :id
   column :genre_id
   column :unit_id
   column :item_name
   column :image_id do |i|
    image_tag 'noimage.png'   #imageを表示するがattachmentは機能していない？image_tagで
   end
   column :item_status
   column :confirm_status

   actions #閲覧編集削除ボタン
  end

end
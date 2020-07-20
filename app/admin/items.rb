ActiveAdmin.register Item do
  config.per_page = 20 # 一覧ページのページングの件数
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
  
  index do
   # check this page
   column :id
   column :item_name
   column :confirm_status
   column :item_status
   column '食品分類' do |item|
    item.genre.genre_name
   end
   column '単位' do |item|
    item.unit.unit_name
   end
   # column :image_id do |i|
   #  image_tag 'noimage.png'   #imageを表示するがattachmentは機能していない？image_tagで
   # end
   actions #閲覧編集削除ボタン
  end

  show do
    attributes_table do
      row :id
      row :item_name
      row '食品分類' do |item|
        item.genre.genre_name
      end
      row '単位' do |item|
        item.unit.unit_name
      end
      row :maker
      row :retail_price
      row :remark
      row :item_status
      row :confirm_status
      row :nutrients_calorie
      row :nutrients_protein
      row :nutrients_lipid
      row :nutrients_carbohydrate
      row :nutrients_salt
      row :nutrients_sodium
      row :nutrients_potassium
      row :nutrients_calcium
      row :nutrients_magnesium
      row :nutrients_rin
      row :nutrients_iron
      row :nutrients_zinc
      row :nutrients_copper
      row :nutrients_manganese
      row :nutrients_lodine
      row :nutrients_selenium
      row :nutrients_chromium
      row :nutrients_molybdenum
      row :nutrients_vitamin_a
      row :nutrients_β_carotene
      row :nutrients_vitamin_d
      row :nutrients_vitamin_e
      row :nutrients_vitamin_k
      row :nutrients_vitamin_b1
      row :nutrients_vitamin_b2
      row :nutrients_niacin
      row :nutrients_vitmain_b6
      row :nutrients_vitamin_b12
      row :nutrients_folic_acid
      row :nutrients_pantothenic_acid
      row :nutrients_biotin
      row :nutrients_vitamin_c
      row :nutrients_saturated_fatty_acid
      row :nutrients_polyunsaturated_fatty_acid
      row :nutrients_monounsaturated_fatty_acid
      row :nutrients_cholesterol
      row :nutrients_soluble_dietary_fiber
      row :nutrients_insoluble_dietary_fiber
      row :nutrients_dietary_fiber
      row :created_at
      row :updated_at
    end
  end

end
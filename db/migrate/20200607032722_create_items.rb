class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

    	t.integer :end_user_id		#foreign_key
    	t.integer :genre_id			#foreign_key
    	t.integer :unit_id			#foreign_key
    	t.string :item_name			#商品名
    	t.string :image				#画像
    	t.string :maker				#メーカー名
    	t.integer :retail_price		#小売価格
    	t.text :remark				#備考
    	t.boolean :item_status, default: true, null: :false			#商品ステータス
    	t.boolean :confirm_status, default: false, null: false		#確認ステータス


    	#decimal型は小数に使う　precisionは全体の桁、scaleは小数点以下の桁数
    	t.integer :nutrients_calorie			#エネルギー
    	t.decimal :nutrients_protein, precision: 10, scale: 1			#たんぱく質
    	t.decimal :nutrients_lipid, precision: 10, scale: 1				#脂質
    	t.decimal :nutrients_carbohydrate, precision: 10, scale: 1		#炭水化物
    	t.decimal :nutrients_salt, precision: 10, scale: 2			#食塩相当量
    	t.decimal :nutrients_sodium, precision: 10, scale: 1			#ナトリウム
    	t.decimal :nutrients_potassium, precision: 10, scale: 1			#カリウム
    	t.decimal :nutrients_calcium, precision: 10, scale: 1			#カルシウム
    	t.decimal :nutrients_magnesium, precision: 10, scale: 1			#マグネシウム
    	t.decimal :nutrients_rin, precision: 10, scale: 1			#リン
    	t.decimal :nutrients_iron, precision: 10, scale: 3			#鉄
    	t.decimal :nutrients_zinc, precision: 10, scale: 3			#亜鉛
    	t.decimal :nutrients_copper, precision: 10, scale: 3			#銅
    	t.decimal :nutrients_manganese, precision: 10, scale: 3			#マンガン
    	t.decimal :nutrients_lodine, precision: 10, scale: 1			#ヨウ素
    	t.decimal :nutrients_selenium, precision: 10, scale: 1			#セレン
    	t.decimal :nutrients_chromium, precision: 10, scale: 1			#クロム
    	t.decimal :nutrients_molybdenum, precision: 10, scale: 1			#モリブデン
    	t.decimal :nutrients_vitamin_a, precision: 10, scale: 1			#ビタミンA
    	t.decimal :nutrients_β_carotene, precision: 10, scale: 1			#βカロテン
    	t.decimal :nutrients_vitamin_d, precision: 10, scale: 2			#ビタミンD
    	t.decimal :nutrients_vitamin_e, precision: 10, scale: 2			#ビタミンE
    	t.decimal :nutrients_vitamin_k, precision: 10, scale: 1			#ビタミンK
    	t.decimal :nutrients_vitamin_b1, precision: 10, scale: 3			#ビタミンB1
    	t.decimal :nutrients_vitamin_b2, precision: 10, scale: 3			#ビタミンB2
    	t.decimal :nutrients_niacin, precision: 10, scale: 2			#ナイアシン
    	t.decimal :nutrients_vitmain_b6, precision: 10, scale: 3			#ビタミンB6
    	t.decimal :nutrients_vitamin_b12, precision: 10, scale: 2			#ビタミンB12
    	t.decimal :nutrients_folic_acid, precision: 10, scale: 1			#葉酸
    	t.decimal :nutrients_pantothenic_acid, precision: 10, scale: 3			#パントテン酸
    	t.decimal :nutrients_biotin, precision: 10, scale: 2			#ビオチン
    	t.decimal :nutrients_vitamin_c, precision: 10, scale: 1			#ビタミンC
    	t.decimal :nutrients_saturated_fatty_acid, precision: 10, scale: 3			#飽和脂肪酸
    	t.decimal :nutrients_polyunsaturated_fatty_acid, precision: 10, scale: 3			#一価不飽和脂肪酸
    	t.decimal :nutrients_monounsaturated_fatty_acid, precision: 10, scale: 3			#多価不飽和脂肪酸
    	t.decimal :nutrients_cholesterol, precision: 10, scale: 3			#コレステロール
    	t.decimal :nutrients_soluble_dietary_fiber, precision: 10, scale: 2			#水溶性食物繊維
    	t.decimal :nutrients_insoluble_dietary_fiber, precision: 10, scale: 2			#不溶性食物繊維
    	t.decimal :nutrients_dietary_fiber, precision: 10, scale: 2			#食物繊維総量


      t.timestamps
    end
  end
end

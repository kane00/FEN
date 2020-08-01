# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# モデルクラス名.create(:カラム名1 => 値1, :カラム名2 => 値2, ...)


# adminテストユーザー
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')#if Rails.env.development?
# end_userテストユーザー
EndUser.create!(id: 0, email: 'fen@fen.com', end_user_name: 'sample', area: 1, user_status: false, password: 'sample', password_confirmation: 'sample')


require 'csv'

# genre初期データをcsvに記入
csv_genre = CSV.read('db/genre.csv', headers: true)
csv_genre.each do |genre|
  Genre.create!(genre.to_hash)
end

# unit初期データをcsvに記入
csv_unit = CSV.read('db/unit.csv', headers: true)
csv_unit.each do |unit|
  Unit.create!(unit.to_hash)
end

# item初期データ(食品成分表2015)をcsvに記入, -1=Tr
csv_item = CSV.read('db/item2.csv', headers: true)
csv_item.each do |item|
  Item.create!(item.to_hash).gsub("-1","Tr")
end
# CSV.foreach('db/item.csv', headers: true) do |row|
#   Item.create(
#   	end_user_id: row['end_user_id'],
#   	genre_id: row['genre_id'],
#   	unit_id: row['unit_id'],
#   	id: row['id'],
#   	item_name: row['item_name'],
#   	nutrients_calorie: row['nutrients_calorie'],
#   	nutrients_protein: row['nutrients_protein'],
#   	nutrients_lipid: row['nutrients_lipid'],
#   	nutrients_carbohydrate: row['nutrients_carbohydrate'],
#   	nutrients_salt: row['nutrients_salt'])
# end

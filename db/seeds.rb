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


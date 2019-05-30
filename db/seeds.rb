# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.find_by(email: 'admin@techfood.com')
  User.create!(name: 'Administrator', email: 'admin@techfood.com', password: '123456', password_confirmation: '123456', role: 'admin')
end

category_an_uong = Category.find_or_create_by!(name: 'an-uong', display_name: 'Ăn uống')

category_an_uong.children.create!(name: 'sang-trong', display_name: 'Sang trọng')
category_an_uong.children.create!(name: 'buffet', display_name: 'Buffet')
category_an_uong.children.create!(name: 'nha-hang', display_name: 'Nhà hàng')
category_an_uong.children.create!(name: 'an-vat-via-he', display_name: 'Ăn vặt/vỉa hè')
category_an_uong.children.create!(name: 'an-chay', display_name: 'Ăn chay')
category_an_uong.children.create!(name: 'cafe', display_name: 'Café/Dessert')
category_an_uong.children.create!(name: 'quan-an', display_name: 'Quán ăn')
category_an_uong.children.create!(name: 'bar-pub', display_name: 'Bar/Pub')
category_an_uong.children.create!(name: 'quan-nhau', display_name: 'Quán nhậu')
category_an_uong.children.create!(name: 'beer-club', display_name: 'Beer club')
category_an_uong.children.create!(name: 'tiem-banh', display_name: 'Tiệm bánh')
category_an_uong.children.create!(name: 'tiec-tan-noi', display_name: 'Tiệc tận nơi')
category_an_uong.children.create!(name: 'giao-com-van-phong', display_name: 'Giao cơm văn phòng')
category_an_uong.children.create!(name: 'foodcourt', display_name: 'Khu ẩm thực')

Source.find_or_create_by!(name: 'foody', display_name: 'Foody')
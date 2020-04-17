# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProductCategory.destroy_all
Product.destroy_all
Category.destroy_all

CATEGORIES = Faker::Base.fetch_all('commerce.department').map do |name|
    Category.find_or_create_by!(name: name)
end

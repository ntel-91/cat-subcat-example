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

NUM_SUBCATEGORIES = 3
PRODUCT_COUNT = 100
MAX_CATEGORIES = 3

categories = Faker::Base.fetch_all('commerce.department').map do |name|
    Category.find_or_create_by!(name: name)
end

categories.each do |category|
    parent = Category.find(category.id)
    NUM_SUBCATEGORIES.times do
        Category.create(name: "#{category.name} - #{Faker::Commerce.material}", parent_id: category.id)
    end
end

SUBCATEGORIES = Category.all.where.not(parent_id: nil)

PRODUCT_COUNT.times do

    name = ''

    loop do
        name = Faker::Commerce.product_name
        break unless Product.exists?(name: name)
    end

    product = Product.new(
        name: name,
        price: Faker::Commerce.price
    )

    num_sub_categories = 1 + rand(MAX_CATEGORIES)
    product.categories = SUBCATEGORIES.sample(num_sub_categories)

    product.save


end
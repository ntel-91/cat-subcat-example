class Category < ApplicationRecord
    has_many :products_categories
    has_many :products, through: :product_categories
end

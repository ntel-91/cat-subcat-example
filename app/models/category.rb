class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories

    has_many :sub_categories, class_name: "Category", foreign_key: :parent_id

    def has_sub_categories
        byebug
        cats = Category.where(parent_id: self.id)
        return cats
    end 
end

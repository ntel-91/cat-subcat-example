class CategoriesController < ApplicationController
    def index
        @categories = Category.all.where(parent_id: nil)
    end
end
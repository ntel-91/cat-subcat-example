class CategoriesController < ApplicationController

    def index
        @categories = Category.all.where(parent_id: nil)
    end

    def show
        @category = Category.find(params[:id])
        @test = @category.has_sub_categories
    end
end
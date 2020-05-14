class UsersController < ApplicationController

    def new
        
    end

    def create
        user = User.new(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )
        user.save

        redirect_to categories_path
    end
end
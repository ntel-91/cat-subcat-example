class UsersController < ApplicationController

    def new
        
    end

    def create
        user = User.create(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )
        session[:user] = user.id
        redirect_to categories_path
    end
end
class AuthController < ApplicationController

    def index
    end

    def login
        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            redirect_to categories_path
        end
    end
end

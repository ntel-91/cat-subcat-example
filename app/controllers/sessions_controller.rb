class SessionsController < ApplicationController

    def new
    end
    
    def create
        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            session[:username] = params[:username]
            redirect_to categories_path
        end
    end
end

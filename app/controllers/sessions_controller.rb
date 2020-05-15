class SessionsController < ApplicationController

    def new
    end
    
    def create
        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            session[:user] = user.id
            redirect_to categories_path
        end
    end

    def destroy
        session.delete :user
        redirect_to login_path
    end
end

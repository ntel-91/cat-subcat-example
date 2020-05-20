class ApplicationController < ActionController::Base
    before_action :valid?

    def user
        if session[:user]
            user = User.find(session[:user])
            user
        end
    end
    def valid?
        redirect_to login_path unless user
    end

    def current_user
        
        user_id = session[:user]
        
        if user_id
            user = User.find(user_id)
            "Welcome, #{user.username}!"
        else
            "Welcome to shopping site!"
        end
    end
    helper_method :current_user

end

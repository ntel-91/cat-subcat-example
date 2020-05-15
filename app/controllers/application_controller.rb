class ApplicationController < ActionController::Base

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

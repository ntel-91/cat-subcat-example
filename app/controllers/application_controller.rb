class ApplicationController < ActionController::Base

    def current_user
        user = session[:username]
        
        if user
            "Welcome, #{user}!"
        else
            "Welcome to shopping site!"
        end
    end
    helper_method :current_user

end

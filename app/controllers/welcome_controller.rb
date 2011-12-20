class WelcomeController < ApplicationController
    
    def index
        if session[:loggedin] != true
            redirect_to login_path
        end            
    end

end
